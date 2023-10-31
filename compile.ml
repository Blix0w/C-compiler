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

(* donne l'addresse d'une left-value dans la mémoire 
    ou l'ajoute si elle n'y est pas déjà
    l'adresse correspond en fait a un offset par rapport à FP *)
let get_addr_from_lvalue lvalue = match lvalue with
  |Var(s) -> (try Hashtbl.find variables s with |_ -> failwith "variable non déclarée")
  |Def(typ, Var s) -> (let size = String.length s in let addr = allocate_memory size in Hashtbl.add variables s addr; addr)
  |_ -> failwith "not implemented"

let rec compile_expr_to_addr (e: expr) (o: int) = (* 
    renvoie un type ivalue
    cette fonction n'est appelée que par compile_expr *)
  match e with
    | Const(Int c) -> Iconst(int_of_string c)
    | Val(Var s) -> Ileft(Ilocal(Hashtbl.find variables s), 8 * String.length s)
    | Moins(exp) ->  compile_expr_to_addr exp 0
    (* Ibinop : profondeur de 1 maximum, il faut tout stocker dans des var intermédiaires *)
    | BinOp(binop, exp1, exp2) -> let _iv1 = compile_expr_to_addr exp1 o and _iv2 = compile_expr_to_addr exp2 o in
      (* renvoie l'adresse ou est stocké le résultat de la binop (mais en fait n'écrit rien dans la mémoire)*)
      incr nb_bin_rec; let name = ("_binop"^(string_of_int !nb_bin_rec)) in 
        let len = String.length name in 
          let addr = allocate_memory len in 
            Hashtbl.add variables name addr ; Ileft((Ilocal(addr),len))

    | Ecall(nom, exprs) -> failwith "not implemented 2"
    | Not(exp) -> compile_expr_to_addr exp o
    |_ -> failwith "not implemented 1"
  

and compile_expr (e: expr) (o: int) = (* renvoie un type iexpr *)
  match e with
    (* Ibinop : profondeur de 1 maximum, il faut tout stocker dans des var intermédiaires *)
    | BinOp(binop, exp1, exp2) -> let iv1 = compile_expr_to_addr exp1 o and iv2 = compile_expr_to_addr exp2 o in
      Ibinop(binop, iv1, iv2)
    (* dans tous les autres cas, on appelle juste compile_expr_to_addr directement*)
    |_ -> Iunop(compile_expr_to_addr e o)



    (* produit un iAST à partir d'un stmt_node*)
  and compile_stmt (stmt: stmt) (o: int) = match stmt with
    | Sif(exp, stmt), _ -> Iif(compile_expr exp o, compile_stmt stmt o, Iblock([]))
    | Sif_else(exp, stmt1, stmt2), _ -> Iif(compile_expr exp o, compile_stmt stmt1 o, compile_stmt stmt2 o)
    | Sblock(blocks), _ -> Iblock(List.map (fun x -> compile_stmt x o) blocks)
    | Sreturn(exp), _ -> Ireturn(compile_expr exp o)
    | Sassign(Var lval, exp), _ -> Iassign((Ilocal(get_addr_from_lvalue (Var lval)), String.length lval),compile_expr exp o)
    | Sval(exp), _ -> Ival(compile_expr exp o)
    | Sbreak, _ -> Ibreak
    | Scontinue, _ -> Icontinue
    |_ -> failwith "not implemented 3" (* manque les Sassign(Def ...) *)


(* Il reste à gérer les déclarations et appels de fonctions *)

let compile_fonction name args = match (name, args) with
  |("main", _) -> failwith "not implemented 4"

(*
let compile_fonction name args = match (name, args) with
      | ("print_int",[e]) -> compile_expr e 0 @ [     
                          Lw(A0, ofset 0);
                          Li(V0 ,1);
                          Syscall;
                        ] @ new_line
      | _ -> raise (Error("Cas non traité 2"))

  
let compile_def f = 
  [Label(f.name)]@(compile_stmt f.body)
*)

let compile_program prog _file = 
  let compiled_functions = List.map (fun x -> (x.name, compile_stmt x.body 0)) prog.defs in
  (compiled_functions, [])
