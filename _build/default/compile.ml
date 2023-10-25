(* Production de code pour notre langage *)

open Mips
open Ast

exception VarUndef of string
exception Error of string ;;
exception RuntimeError of string * Lexing.position ;;

let variables = Hashtbl.create 1 (* associe un nom à une adresse *)
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
    |Var(s) -> try Hashtbl.find variables with |_ -> let addr, size = allocate_memory String.length s, String.length s in Hashtbl.add variables s (addr, size); (addr,size)
    |Def(type, lvalue2) -> failwith "not implemented2"

let rec compile_expr (e: expr) (o: int): instruction list= 
  match e with
    | Const(Int c) -> Iunop(Iconst(int_of_string c))
    | Val(Var s) -> Iunop(Ileft(try (Hashtbl.find variables s, 8 * String.length s)))
    | Moins(exp) ->  Iunop(Ileft(compile_expr exp 0))
    (* Ibinop : profondeur de 1 maximum, il faut tout stocker dans des var intermédiaires *)
    | BinOp(binop, exp1, exp2) -> 
    | Ecall(nom, exprs) -> let body = compile_iast exprs
    | Not(exp) -> Iunop(Ileft(compile_expr exp o))
  
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