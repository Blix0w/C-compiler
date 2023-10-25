(* Production de code pour notre langage *)

open Mips
open Ast

exception VarUndef of string
exception Error of string ;;
exception RuntimeError of string * Lexing.position ;;


let new_line = [Li(A0 ,10); Li(V0 ,11); Syscall]
let end_code = [Label("end"); Li(V0 ,10); Syscall]

let binop_to_arithop (bo: binop): arith = match bo with
  Add -> Add | Sub -> Sub | Mul -> Mul | Div -> Div | _ ->  raise (Error("Cas non traité 5"))

let ofset o = 
  Areg(o * -4, SP)

let rec compile_expr (e: expr) (o: int): instruction list= 
  match e with
    | Const(c) -> (match c with
                  | Int(i) -> [
                                Li(T 0, int_of_string i);
                                Sw(T 0, ofset o)
                              ]
                  | _ -> raise (Error("Cas non traité 4")))
    | BinOp(bo, e1, e2) ->
      (compile_expr e1 (o+1)) @ 
      (compile_expr e2 (o+2)) @ 
      [
        Lw(T 0,ofset (o+1)); 
        Lw(T 1, ofset (o+2)); 
        Arith(binop_to_arithop bo, T 0, T 0, T 1);
        Sw(T 0, ofset o)
      ]
    | _ -> raise (Error("Cas non traité 3"))







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