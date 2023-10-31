(* Production de code pour notre langage *)

open Mips
open Ast

exception VarUndef of string
exception Error of string ;;
exception RuntimeError of string * Lexing.position ;;


let new_line = [Li(A0 ,10); Li(V0 ,11); Syscall]
let end_code = [Label("end"); Li(V0 ,10); Syscall]

let ofset o = 
  Areg(o * -4, SP)

let compile_pos lst_var p o = match p with
  | Ilocal(i) -> []
  | Iglobal(s) -> [][]
  | Ideref(e) -> []

let compile_left_value lst_var lv o = 
  let p i = lv in 
  []

let compile_ivalue lst_var v o = match v with
  | Ileft(lv) -> 
  | Iconst(i) ->  [
                    Li(T 0, i);
                    Sw(T 0, ofset o)
                  ]

let compile_iexpr lst_var e o = match e with
  | Iunop(v) -> compile_ivalue lst_var v o
  | Ibinop(b, v1, v2) -> 
    (compile_ivalue v1 (o+1) let_in_vars) @ 
    (compile_ivalue v2 (o+2) let_in_vars) @ 
    [
      Lw(T 0, ofset (o+1)); 
      Lw(T 1, ofset (o+2)); 
      Arith(binop_to_arithop bo, T 0, T 0, T 1);
      Sw(T 0, ofset o)
    ]

  | Icall(p, s, i) -> []

let rec compile_ast lst_var ast = match ast with
  | Iblock(b) -> List.fold_left (fun acc a -> acc@(compile_ast lst_var a)) [] b
  | Iif(e, a1, a2) -> (incr index_if); 
      (compile_iexpr lst_var e 0) @ [
      Lw(T 0, ofset 0);
      Beq(T 0, ZERO ,"else_" ^ string_of_int !index_if)] @
      (compile_ast lst_var a1) @ [
      J("endif_" ^ string_of_int !index_if);
      Label("else_" ^ string_of_int !index_if)] @ 
      (compile_ast lst_var a2) @ [
      Label("endif_" ^ string_of_int !index_if)]
  | Ireturn(e) -> (compile_iexpr lst_var e 0 ) @ [Lw(RA, ofset (-1)); Jr(RA)]
  | Iassign(lv, e) -> (compile_iexpr lst_var e 0 lst_var) @ [Lw(T 0, ofset 0);] @ ( match lv with
    | Ilocal -> [Move()]
    | Iglobal -> []
    | Ideref -> []
  )
  | Ival(e) -> (compile_iexpr e 0 lst_var)


(* Compilation d'une expression *)	
let compile_iprogram (p: iprogram) ofile =
  let lst_ast, lst_var = p in
  let index_if = ref 0 in
  let code = List.map (compile_ast lst_var) lst_ast |> List.concat in
  let p = 
    { text =
      code@end_code;
      data = [
        ]
    }
  in
  Mips.print_program p ofile;