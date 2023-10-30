(* Production de code pour notre langage *)

open Mips
open Ast

exception VarUndef of string
exception Error of string ;;
exception RuntimeError of string * Lexing.position ;;

let nb_bin_rec = ref 0

let variables = Hashtbl.create 1 (* associe un nom de variable/fonction à une adresse *)
let mem = ref 0 (* adresse de la mémoire qu'on va donner et modifier à chaque fois *)
let allocate_memory size = 
  mem := !mem + size; !mem

let new_line = [Li(A0 ,10); Li(V0 ,11); Syscall]
let end_code = [Label("end"); Li(V0 ,10); Syscall]

let binop_to_arithop (bo: binop): arith = match bo with
  Add -> Add | Sub -> Sub | Mul -> Mul | Div -> Div | _ ->  raise (Error("Cas non traité 5"))

let ofset o = 
  Areg(o * -4, SP)

  (* donne l'addresse et la taille d'une left-value dans la mémoire 
     ou l'ajoute si elle n'y est pas déjà *)
  let get_addr_from_lvalue lvalue = match lvalue with
    |Var(s) -> try Hashtbl.find variables s with |_ -> failwith "variable non déclarée"
    |Def(typ, (Val Var s)) -> (let addr, size = allocate_memory String.length s in Hashtbl.add variables s (addr, size); Ileft((addr,size)))
    |_ -> failwith "not implemented"

let rec compile_expr_to_addr (e: expr) (o: int) = (* 
    renvoie un type ivalue
    cette fonction n'est appelée que par compile_expr *)
  match e with
    | Const(Int c) -> Iconst(int_of_string c)
    | Val(Var s) -> Ileft(Hashtbl.find variables s, 8 * String.length s)
    | Moins(exp) ->  Ileft(compile_expr exp 0)
    (* Ibinop : profondeur de 1 maximum, il faut tout stocker dans des var intermédiaires *)
    | BinOp(binop, exp1, exp2) -> let iv1 = compile_expr_to_addr exp1 o and iv2 = compile_expr_to_addr exp2 o in
      (* renvoie l'adresse ou est stocké le résultat de la binop (mais en fait n'écrit rien dans la mémoire)*)
      incr nb_bin_rec; let name = ("_binop"^(string_of_int !nb_bin_rec)) in let addr, size = allocate_memory String.length name in Hashtbl.add variables name (addr, size); Ileft((addr,size))

    | Ecall(nom, exprs) -> let body = compile_iast exprs in failwith "not implemented"
    | Not(exp) -> Ileft(compile_expr exp o)
  

let compile_expr (e: expr) (o: int) = (* renvoie un type iexpr *)
  match e with
    | Const x | Val x | Moins x | Not x | Ecall x -> compile_expr_to_addr e o
    (* Ibinop : profondeur de 1 maximum, il faut tout stocker dans des var intermédiaires *)
    | BinOp(binop, exp1, exp2) -> let iv1 = compile_expr_to_addr exp1 o and iv2 = compile_expr_to_addr exp2 o in
      Ibinop(binop, iv1, iv2)



    (* produit un iAST à partir d'un stmt_node*)
  and compile_stmt stmt o = match stmt with
    | Sif(exp, stmt) -> Iif(compile_expr exp 0, compile_stmt stmt o, Iblock([]))
    | Sif(exp, stmt1, stmt2) -> Iif(compile_expr exp o, compile_stmt stmt1 o, compile_stmt stmt2 o)
    | Sblock(blocks) -> List.map (fun x -> compile_stmt x o) blocks
    | Sreturn(exp) -> Ireturn(compile_expr exp o)
    | Sassign(lval, exp) -> Iassign(Ileft(get_addr_from_lvalue lval),compile_expr exp o)
    | Sval(exp) -> Ival(compile_expr exp o)
    | Sbreak -> Ibreak
    | Scontinue -> Icontinue







let compile_fonction name args = match (name, args) with
      | ("print_int",[e]) -> compile_expr e 0 @ [     
                          Lw(A0, ofset 0);
                          Li(V0 ,1);
                          Syscall;
                        ] @ new_line
      | _ -> raise (Error("Cas non traité 2"))

let rec compile_stmt (stmt_node,_) = match stmt_node with
  | Sval(Ecall(name, args)) -> compile_fonction name args
  | Sblock(b) -> List.fold_left (fun acc s -> acc @ (compile_stmt s)) [] b
  | Sreturn(_) -> raise (Error("Sreturn"))
  | Sassign(_, _) -> raise (Error("Sassign"))
  | Sbreak  -> raise (Error("Sbreak"))
  | Scontinue -> raise (Error("Scontinue"))
  | Sval(_) -> raise (Error("Sval"))
  | Sif(_,_) -> raise (Error("Sif"))
  | Sif_else(_,_,_) -> raise (Error("Sif_else"))
  
let compile_def f = 
  [Label(f.name)]@(compile_stmt f.body)


(* Compilation d'une expression *)	
let compile_program p ofile =
  let code = List.map compile_def p.defs |> List.concat in
  let p = 
    { text =
      code@end_code ;
      data = [
        ]
    }
  in
  Mips.print_program p ofile;