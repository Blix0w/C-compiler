
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | VOID
    | TIMES
    | STR of (
# 5 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | STAR
    | SIZEOF
    | SEMICOLON
    | RP
    | RETURN
    | RB
    | PRINT_STRING
    | PRINT_INT
    | PLUS
    | OR
    | NOT
    | NEQ
    | MOD
    | MINUS
    | LP
    | LEQ
    | LE
    | LB
    | INT
    | IF
    | IDENT of (
# 6 "parser.mly"
       (string)
# 42 "parser.ml"
  )
    | GEQ
    | GE
    | ESP
    | EQQ
    | EQ
    | EOF
    | ELSE
    | DIV
    | CST of (
# 4 "parser.mly"
       (string)
# 55 "parser.ml"
  )
    | CONTINUE
    | COMMA
    | BREAK
    | AND
  
end

include MenhirBasics

# 1 "parser.mly"
  
  open Ast

# 70 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_file) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: file. *)

  | MenhirState05 : (('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_state
    (** State 05.
        Stack shape : typ IDENT LP.
        Start symbol: file. *)

  | MenhirState07 : (('s, _menhir_box_file) _menhir_cell1_var, _menhir_box_file) _menhir_state
    (** State 07.
        Stack shape : var.
        Start symbol: file. *)

  | MenhirState08 : (('s, _menhir_box_file) _menhir_cell1_typ, _menhir_box_file) _menhir_state
    (** State 08.
        Stack shape : typ.
        Start symbol: file. *)

  | MenhirState15 : ((('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__, _menhir_box_file) _menhir_state
    (** State 15.
        Stack shape : typ IDENT LP loption(separated_nonempty_list(COMMA,var)).
        Start symbol: file. *)

  | MenhirState17 : (('s, _menhir_box_file) _menhir_cell1_RETURN, _menhir_box_file) _menhir_state
    (** State 17.
        Stack shape : RETURN.
        Start symbol: file. *)

  | MenhirState18 : (('s, _menhir_box_file) _menhir_cell1_NOT, _menhir_box_file) _menhir_state
    (** State 18.
        Stack shape : NOT.
        Start symbol: file. *)

  | MenhirState19 : (('s, _menhir_box_file) _menhir_cell1_MINUS, _menhir_box_file) _menhir_state
    (** State 19.
        Stack shape : MINUS.
        Start symbol: file. *)

  | MenhirState20 : (('s, _menhir_box_file) _menhir_cell1_LP, _menhir_box_file) _menhir_state
    (** State 20.
        Stack shape : LP.
        Start symbol: file. *)

  | MenhirState22 : (('s, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_state
    (** State 22.
        Stack shape : IDENT LP.
        Start symbol: file. *)

  | MenhirState29 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 29.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState32 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 32.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState34 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 34.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState36 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 36.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState38 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 38.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState40 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 40.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState42 : (('s, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS, _menhir_box_file) _menhir_state
    (** State 42.
        Stack shape : expr MINUS.
        Start symbol: file. *)

  | MenhirState44 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 44.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState46 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 46.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState48 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 48.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState50 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 50.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState52 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 52.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState54 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 54.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState56 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 56.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState63 : (('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_state
    (** State 63.
        Stack shape : IF.
        Start symbol: file. *)

  | MenhirState65 : ((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 65.
        Stack shape : IF expr.
        Start symbol: file. *)

  | MenhirState71 : (((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_suite, _menhir_box_file) _menhir_state
    (** State 71.
        Stack shape : IF expr suite.
        Start symbol: file. *)

  | MenhirState74 : (('s, _menhir_box_file) _menhir_cell1_stmt, _menhir_box_file) _menhir_state
    (** State 74.
        Stack shape : stmt.
        Start symbol: file. *)

  | MenhirState79 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 79.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState87 : (('s, _menhir_box_file) _menhir_cell1_def, _menhir_box_file) _menhir_state
    (** State 87.
        Stack shape : def.
        Start symbol: file. *)


and ('s, 'r) _menhir_cell1_def = 
  | MenhirCell1_def of 's * ('s, 'r) _menhir_state * (Ast.def)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr) * Lexing.position

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_var__ of 's * ('s, 'r) _menhir_state * (Ast.left_value list)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt) * Lexing.position

and ('s, 'r) _menhir_cell1_suite = 
  | MenhirCell1_suite of 's * ('s, 'r) _menhir_state * (Ast.stmt)

and ('s, 'r) _menhir_cell1_typ = 
  | MenhirCell1_typ of 's * ('s, 'r) _menhir_state * (Ast.typ)

and ('s, 'r) _menhir_cell1_var = 
  | MenhirCell1_var of 's * ('s, 'r) _menhir_state * (Ast.left_value)

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 6 "parser.mly"
       (string)
# 249 "parser.ml"
) * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 6 "parser.mly"
       (string)
# 256 "parser.ml"
) * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LP = 
  | MenhirCell1_LP of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LP = 
  | MenhirCell0_LP of 's * Lexing.position

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_MINUS = 
  | MenhirCell0_MINUS of 's * Lexing.position

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_file = 
  | MenhirBox_file of (Ast.prog) [@@unboxed]

let _menhir_action_01 =
  fun i ->
    (
# 85 "parser.mly"
            ( Int(i) )
# 288 "parser.ml"
     : (Ast.const))

let _menhir_action_02 =
  fun s ->
    (
# 86 "parser.mly"
            ( Str(s) )
# 296 "parser.ml"
     : (Ast.const))

let _menhir_action_03 =
  fun bod nom t xs ->
    let args = 
# 229 "<standard.mly>"
    ( xs )
# 304 "parser.ml"
     in
    (
# 43 "parser.mly"
                                                                                           ({ name = nom ; args = args ; body = bod; return_type = t })
# 309 "parser.ml"
     : (Ast.def))

let _menhir_action_04 =
  fun i ->
    (
# 72 "parser.mly"
                                    ( Const(i) )
# 317 "parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun v ->
    (
# 73 "parser.mly"
                                   ( Val(v) )
# 325 "parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun e1 e2 ->
    let o = 
# 90 "parser.mly"
          ( Add )
# 333 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 338 "parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun e1 e2 ->
    let o = 
# 91 "parser.mly"
          ( Sub )
# 346 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 351 "parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun e1 e2 ->
    let o = 
# 92 "parser.mly"
          ( Mul )
# 359 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 364 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun e1 e2 ->
    let o = 
# 93 "parser.mly"
          ( Div )
# 372 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 377 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun e1 e2 ->
    let o = 
# 94 "parser.mly"
          ( Mod )
# 385 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 390 "parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun e1 e2 ->
    let o = 
# 95 "parser.mly"
          ( Leq )
# 398 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 403 "parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun e1 e2 ->
    let o = 
# 96 "parser.mly"
          ( Geq )
# 411 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 416 "parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun e1 e2 ->
    let o = 
# 97 "parser.mly"
          ( Ge  )
# 424 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 429 "parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun e1 e2 ->
    let o = 
# 98 "parser.mly"
          ( Le  )
# 437 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 442 "parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun e1 e2 ->
    let o = 
# 99 "parser.mly"
          ( Neq )
# 450 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 455 "parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun e1 e2 ->
    let o = 
# 100 "parser.mly"
          ( Eqq  )
# 463 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 468 "parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun e1 e2 ->
    let o = 
# 101 "parser.mly"
          ( And )
# 476 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 481 "parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun e1 e2 ->
    let o = 
# 102 "parser.mly"
          ( Or  )
# 489 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 494 "parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun e ->
    (
# 75 "parser.mly"
                                   ( Moins(e) )
# 502 "parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun e ->
    (
# 76 "parser.mly"
                                                            ( Not(e) )
# 510 "parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun nom xs ->
    let args = 
# 229 "<standard.mly>"
    ( xs )
# 518 "parser.ml"
     in
    (
# 77 "parser.mly"
                                                             ( Ecall(nom, args) )
# 523 "parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun e ->
    (
# 78 "parser.mly"
                                   ( e )
# 531 "parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun d ->
    (
# 40 "parser.mly"
                    ({ defs = d })
# 539 "parser.ml"
     : (Ast.prog))

let _menhir_action_24 =
  fun v ->
    (
# 81 "parser.mly"
                                   ( Var(v) )
# 547 "parser.ml"
     : (Ast.left_value))

let _menhir_action_25 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 555 "parser.ml"
     : (Ast.def list))

let _menhir_action_26 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 563 "parser.ml"
     : (Ast.def list))

let _menhir_action_27 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 571 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_28 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 579 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_29 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 587 "parser.ml"
     : (Ast.expr list))

let _menhir_action_30 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 595 "parser.ml"
     : (Ast.expr list))

let _menhir_action_31 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 603 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_32 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 611 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_33 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 619 "parser.ml"
     : (Ast.expr list))

let _menhir_action_34 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 627 "parser.ml"
     : (Ast.expr list))

let _menhir_action_35 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 635 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_36 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 643 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_37 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 64 "parser.mly"
                                    ( Sbreak, _startpos )
# 652 "parser.ml"
     : (Ast.stmt))

let _menhir_action_38 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 65 "parser.mly"
                                    ( Scontinue, _startpos )
# 661 "parser.ml"
     : (Ast.stmt))

let _menhir_action_39 =
  fun _startpos__1_ e ->
    let _startpos = _startpos__1_ in
    (
# 66 "parser.mly"
                                    ( Sreturn(e), _startpos )
# 670 "parser.ml"
     : (Ast.stmt))

let _menhir_action_40 =
  fun _startpos_e1_ e1 e2 ->
    let _startpos = _startpos_e1_ in
    (
# 67 "parser.mly"
                                    ( Sassign(e1, e2), _startpos )
# 679 "parser.ml"
     : (Ast.stmt))

let _menhir_action_41 =
  fun _startpos_e_ e ->
    let _startpos = _startpos_e_ in
    (
# 68 "parser.mly"
                                    ( Sval(e), _startpos )
# 688 "parser.ml"
     : (Ast.stmt))

let _menhir_action_42 =
  fun s ->
    (
# 58 "parser.mly"
                               (s)
# 696 "parser.ml"
     : (Ast.stmt))

let _menhir_action_43 =
  fun _startpos__1_ e s_else s_if ->
    let _startpos = _startpos__1_ in
    (
# 59 "parser.mly"
                                                                     ( Sif_else(e, s_if, s_else), _startpos )
# 705 "parser.ml"
     : (Ast.stmt))

let _menhir_action_44 =
  fun _startpos__1_ e s_if ->
    let _startpos = _startpos__1_ in
    (
# 60 "parser.mly"
                                       ( Sif(e, s_if),  _startpos )
# 714 "parser.ml"
     : (Ast.stmt))

let _menhir_action_45 =
  fun _startpos_s_ s ->
    let _startpos = _startpos_s_ in
    (
# 54 "parser.mly"
                 ( Sblock(s), _startpos )
# 723 "parser.ml"
     : (Ast.stmt))

let _menhir_action_46 =
  fun () ->
    (
# 50 "parser.mly"
          ( Int )
# 731 "parser.ml"
     : (Ast.typ))

let _menhir_action_47 =
  fun () ->
    (
# 51 "parser.mly"
          ( Void )
# 739 "parser.ml"
     : (Ast.typ))

let _menhir_action_48 =
  fun l t ->
    (
# 46 "parser.mly"
                             ( Def(t, l) )
# 747 "parser.ml"
     : (Ast.left_value))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | BREAK ->
        "BREAK"
    | COMMA ->
        "COMMA"
    | CONTINUE ->
        "CONTINUE"
    | CST _ ->
        "CST"
    | DIV ->
        "DIV"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EQQ ->
        "EQQ"
    | ESP ->
        "ESP"
    | GE ->
        "GE"
    | GEQ ->
        "GEQ"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | INT ->
        "INT"
    | LB ->
        "LB"
    | LE ->
        "LE"
    | LEQ ->
        "LEQ"
    | LP ->
        "LP"
    | MINUS ->
        "MINUS"
    | MOD ->
        "MOD"
    | NEQ ->
        "NEQ"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | PRINT_INT ->
        "PRINT_INT"
    | PRINT_STRING ->
        "PRINT_STRING"
    | RB ->
        "RB"
    | RETURN ->
        "RETURN"
    | RP ->
        "RP"
    | SEMICOLON ->
        "SEMICOLON"
    | SIZEOF ->
        "SIZEOF"
    | STAR ->
        "STAR"
    | STR _ ->
        "STR"
    | TIMES ->
        "TIMES"
    | VOID ->
        "VOID"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_84 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let d = _v in
      let _v = _menhir_action_23 d in
      MenhirBox_file _v
  
  let rec _menhir_run_88 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_def -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let MenhirCell1_def (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_26 x xs in
      _menhir_goto_list_def_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_def_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState87 ->
          _menhir_run_88 _menhir_stack _v
      | MenhirState00 ->
          _menhir_run_84 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LP ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_1) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_47 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05 _tok
              | INT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_46 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05 _tok
              | RP ->
                  let _v = _menhir_action_31 () in
                  _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v_0 in
          let _v = _menhir_action_24 v in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_typ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_48 l t in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_47 () in
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
          | INT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_46 () in
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
          | _ ->
              _eRR ())
      | RP ->
          let x = _v in
          let _v = _menhir_action_35 x in
          _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_var_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState05 ->
          _menhir_run_12_spec_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState07 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_12_spec_05 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_32 x in
      _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
  
  and _menhir_run_13 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_var__ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LB ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STR _v_0 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_s_, s) = (_startpos, _v_0) in
              let _v = _menhir_action_02 s in
              _menhir_run_31_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | RETURN ->
              _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | NOT ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | MINUS ->
              _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | LP ->
              _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | IF ->
              _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState15
          | IDENT _v_2 ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState15
          | CST _v_3 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos, _v_3) in
              let _v = _menhir_action_01 i in
              _menhir_run_31_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | CONTINUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_37 _startpos__1_ in
              _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState15 _tok
          | BREAK ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_38 _startpos__1_ in
              _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState15 _tok
          | RB ->
              let _v = _menhir_action_27 () in
              _menhir_run_81_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_15 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState15 _tok
  
  and _menhir_run_78 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STR _v_0 ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_s_, s) = (_startpos_1, _v_0) in
              let _v = _menhir_action_02 s in
              _menhir_run_31_spec_79 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | NOT ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
          | MINUS ->
              _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
          | LP ->
              _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
          | IDENT _v_3 ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState79
          | CST _v_4 ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos_5, _v_4) in
              let _v = _menhir_action_01 i in
              _menhir_run_31_spec_79 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | _ ->
              _eRR ())
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let (_startpos_e_, e) = (_startpos, _v) in
          let _v = _menhir_action_41 _startpos_e_ e in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_29 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState29
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState29
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_29 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_30 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_08 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState79 ->
          _menhir_run_80 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState15 ->
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState65 ->
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState71 ->
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState74 ->
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState63 ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState17 ->
          _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState18 ->
          _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState19 ->
          _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState20 ->
          _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState54 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState52 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState50 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState48 ->
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState46 ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState44 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState42 ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState40 ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState38 ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState36 ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState34 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState32 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState29 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState56 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState22 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_80 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_40 _startpos_e1_ e1 e2 in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_32 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_32 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState32
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_32 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_32 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState32 _tok
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | GE | GEQ | LB | LE | LEQ | MINUS | NEQ | OR | PLUS | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_06 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_34 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState34
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_34 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_35 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_10 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_18 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState18
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_18 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_61 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_20 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_19 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState19
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState19
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState19
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState19
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_19 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_60 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_19 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_20 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LP (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos_0, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_20 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState20
      | CST _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_1, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_20 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_20 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState20 _tok
  
  and _menhir_run_58 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_LP as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LP (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_22 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_38 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_38 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState38
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_38 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_38 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState38 _tok
  
  and _menhir_run_39 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EQ | LB | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_18 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_40 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_40 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState40
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_40 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_40 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState40 _tok
  
  and _menhir_run_41 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | LB | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_15 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_42 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_MINUS (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos_0, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_42 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState42
      | CST _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_1, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_42 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_42 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState42 _tok
  
  and _menhir_run_43 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | GE | GEQ | LB | LE | LEQ | MINUS | NEQ | OR | PLUS | RP | SEMICOLON ->
          let MenhirCell0_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_07 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_36 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState36
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_36 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_37 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_09 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_21 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LP ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LP (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STR _v_1 ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_s_, s) = (_startpos_2, _v_1) in
              let _v = _menhir_action_02 s in
              _menhir_run_31_spec_22 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | NOT ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
          | MINUS ->
              _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
          | LP ->
              _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
          | IDENT _v_4 ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState22
          | CST _v_5 ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos_6, _v_5) in
              let _v = _menhir_action_01 i in
              _menhir_run_31_spec_22 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | RP ->
              let _v = _menhir_action_29 () in
              _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | AND | COMMA | DIV | EQ | EQQ | GE | GEQ | LB | LE | LEQ | MINUS | MOD | NEQ | OR | PLUS | RP | SEMICOLON | TIMES ->
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_24 v in
          _menhir_goto_left_value _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_22 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState22 _tok
  
  and _menhir_run_28 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STR _v_0 ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_s_, s) = (_startpos_1, _v_0) in
              let _v = _menhir_action_02 s in
              _menhir_run_31_spec_56 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | NOT ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | MINUS ->
              _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | LP ->
              _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
          | IDENT _v_3 ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState56
          | CST _v_4 ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos_5, _v_4) in
              let _v = _menhir_action_01 i in
              _menhir_run_31_spec_56 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RP ->
          let x = _v in
          let _v = _menhir_action_33 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_44 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_44 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState44
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_44 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_44 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState44 _tok
  
  and _menhir_run_45 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | LB | NEQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_11 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_46 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_46 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState46
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_46 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_46 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState46 _tok
  
  and _menhir_run_47 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | LB | NEQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_14 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_48 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_48 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState48
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_48 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_48 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState48 _tok
  
  and _menhir_run_49 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | LB | NEQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_12 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_50 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState50
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_50 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState50 _tok
  
  and _menhir_run_51 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQQ | LB | NEQ | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_13 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_52 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState52
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_52 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState52 _tok
  
  and _menhir_run_53 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | LB | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_16 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_56 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState56 _tok
  
  and _menhir_run_54 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_54 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState54
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_54 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_54 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState54 _tok
  
  and _menhir_run_55 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | LB | OR | RP | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_17 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState56 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState22 ->
          _menhir_run_24_spec_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_57 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_34 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_24_spec_22 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_30 x in
      _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_25 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, nom, _startpos_nom_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_21 nom xs in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_nom_ _v _menhir_s _tok
  
  and _menhir_goto_left_value : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState15 ->
          _menhir_run_27_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState65 ->
          _menhir_run_27_spec_65 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState71 ->
          _menhir_run_27_spec_71 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState79 ->
          _menhir_run_27_spec_79 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState74 ->
          _menhir_run_27_spec_74 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState63 ->
          _menhir_run_27_spec_63 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState17 ->
          _menhir_run_27_spec_17 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState18 ->
          _menhir_run_27_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState19 ->
          _menhir_run_27_spec_19 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState20 ->
          _menhir_run_27_spec_20 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState56 ->
          _menhir_run_27_spec_56 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState54 ->
          _menhir_run_27_spec_54 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState52 ->
          _menhir_run_27_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState50 ->
          _menhir_run_27_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState48 ->
          _menhir_run_27_spec_48 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState46 ->
          _menhir_run_27_spec_46 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState44 ->
          _menhir_run_27_spec_44 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState42 ->
          _menhir_run_27_spec_42 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState40 ->
          _menhir_run_27_spec_40 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState38 ->
          _menhir_run_27_spec_38 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState36 ->
          _menhir_run_27_spec_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState34 ->
          _menhir_run_27_spec_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState32 ->
          _menhir_run_27_spec_32 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState29 ->
          _menhir_run_27_spec_29 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState22 ->
          _menhir_run_27_spec_22 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok
      | MenhirState08 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_27_spec_15 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState15 _tok
  
  and _menhir_run_27_spec_65 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState65 _tok
  
  and _menhir_run_27_spec_71 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_suite -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState71 _tok
  
  and _menhir_run_27_spec_79 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_80 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState79 _tok
  
  and _menhir_run_27_spec_74 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState74 _tok
  
  and _menhir_run_27_spec_63 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState63 _tok
  
  and _menhir_run_64 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LB ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STR _v_0 ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_s_, s) = (_startpos_1, _v_0) in
              let _v = _menhir_action_02 s in
              _menhir_run_31_spec_65 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | RETURN ->
              _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState65
          | NOT ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState65
          | MINUS ->
              _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState65
          | LP ->
              _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState65
          | IF ->
              _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState65
          | IDENT _v_3 ->
              _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState65
          | CST _v_4 ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos_5, _v_4) in
              let _v = _menhir_action_01 i in
              _menhir_run_31_spec_65 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | CONTINUE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_7 in
              let _v = _menhir_action_37 _startpos__1_ in
              _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState65 _tok
          | BREAK ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_9 in
              let _v = _menhir_action_38 _startpos__1_ in
              _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState65 _tok
          | RB ->
              let _v = _menhir_action_27 () in
              _menhir_run_81_spec_65 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v
          | _ ->
              _eRR ())
      | GEQ ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_65 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState65 _tok
  
  and _menhir_run_17 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos_0, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_17 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState17
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState17
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState17
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState17
      | CST _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_1, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_17 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_17 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState17 _tok
  
  and _menhir_run_62 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_39 _startpos__1_ e in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_simple_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
  
  and _menhir_run_75 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_42 s in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | STR _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos_1, _v_0) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_74 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | RETURN ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
      | IF ->
          _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
      | IDENT _v_3 ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState74
      | CST _v_4 ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_5, _v_4) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_74 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | CONTINUE ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_7 in
          let _v = _menhir_action_37 _startpos__1_ in
          _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState74 _tok
      | BREAK ->
          let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_9 in
          let _v = _menhir_action_38 _startpos__1_ in
          _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState74 _tok
      | RB ->
          let _v = _menhir_action_27 () in
          _menhir_run_77 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_74 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState74 _tok
  
  and _menhir_run_63 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos_0, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_31_spec_63 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | MINUS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | LP ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | IDENT _v ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState63
      | CST _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_1, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_31_spec_63 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_63 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState63 _tok
  
  and _menhir_run_77 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x, _startpos_x_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_28 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_x_ _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s ->
      match _menhir_s with
      | MenhirState15 ->
          _menhir_run_81_spec_15 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v
      | MenhirState65 ->
          _menhir_run_81_spec_65 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v
      | MenhirState71 ->
          _menhir_run_81_spec_71 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v
      | MenhirState74 ->
          _menhir_run_77 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_81_spec_15 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT _menhir_cell0_LP, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v ->
      let _v =
        let (_startpos_s_, s) = (_startpos, _v) in
        _menhir_action_45 _startpos_s_ s
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_var__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LP (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, nom, _) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let bod = _v in
      let _v = _menhir_action_03 bod nom t xs in
      let _menhir_stack = MenhirCell1_def (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_47 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState87 _tok
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_46 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState87 _tok
      | EOF ->
          let _v = _menhir_action_25 () in
          _menhir_run_88 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_81_spec_65 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v ->
      let _v =
        let (_startpos_s_, s) = (_startpos, _v) in
        _menhir_action_45 _startpos_s_ s
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_suite (_menhir_stack, MenhirState65, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LB ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | STR _v_0 ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos_s_, s) = (_startpos, _v_0) in
                  let _v = _menhir_action_02 s in
                  _menhir_run_31_spec_71 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
              | RETURN ->
                  _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
              | NOT ->
                  _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
              | MINUS ->
                  _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
              | LP ->
                  _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
              | IF ->
                  _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
              | IDENT _v_2 ->
                  _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState71
              | CST _v_3 ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos_i_, i) = (_startpos, _v_3) in
                  let _v = _menhir_action_01 i in
                  _menhir_run_31_spec_71 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
              | CONTINUE ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_37 _startpos__1_ in
                  _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState71 _tok
              | BREAK ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_38 _startpos__1_ in
                  _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState71 _tok
              | RB ->
                  let _v = _menhir_action_27 () in
                  _menhir_run_81_spec_71 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | BREAK | CONTINUE | CST _ | IDENT _ | IF | LP | MINUS | NOT | RB | RETURN | STR _ ->
          let MenhirCell1_expr (_menhir_stack, _, e, _) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let s_if = _v in
          let _v = _menhir_action_44 _startpos__1_ e s_if in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_31_spec_71 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_suite -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState71 _tok
  
  and _menhir_run_81_spec_71 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_suite -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v ->
      let _v =
        let (_startpos_s_, s) = (_startpos, _v) in
        _menhir_action_45 _startpos_s_ s
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_suite (_menhir_stack, _, s_if) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e, _) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let s_else = _v in
      let _v = _menhir_action_43 _startpos__1_ e s_else s_if in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_27_spec_17 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_62 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState17 _tok
  
  and _menhir_run_27_spec_18 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_05 v in
      _menhir_run_61 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_27_spec_19 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_05 v in
      _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_27_spec_20 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_58 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState20 _tok
  
  and _menhir_run_27_spec_56 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState56 _tok
  
  and _menhir_run_27_spec_54 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState54 _tok
  
  and _menhir_run_27_spec_52 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState52 _tok
  
  and _menhir_run_27_spec_50 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState50 _tok
  
  and _menhir_run_27_spec_48 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState48 _tok
  
  and _menhir_run_27_spec_46 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState46 _tok
  
  and _menhir_run_27_spec_44 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState44 _tok
  
  and _menhir_run_27_spec_42 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState42 _tok
  
  and _menhir_run_27_spec_40 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState40 _tok
  
  and _menhir_run_27_spec_38 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState38 _tok
  
  and _menhir_run_27_spec_36 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_05 v in
      _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_27_spec_34 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_05 v in
      _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_27_spec_32 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState32 _tok
  
  and _menhir_run_27_spec_29 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let v = _v in
      let _v = _menhir_action_05 v in
      _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_27_spec_22 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IDENT _menhir_cell0_LP -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_v_, v) = (_startpos, _v) in
      let _v = _menhir_action_05 v in
      _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState22 _tok
  
  and _menhir_run_31_spec_79 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_80 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState79 _tok
  
  and _menhir_run_11 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_var -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_36 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_47 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_46 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | EOF ->
          let _v = _menhir_action_25 () in
          _menhir_run_84 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let file =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_file v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
