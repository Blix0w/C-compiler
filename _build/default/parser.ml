
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

  | MenhirState05 : (('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_file) _menhir_state
    (** State 05.
        Stack shape : typ IDENT.
        Start symbol: file. *)

  | MenhirState07 : (('s, _menhir_box_file) _menhir_cell1_var, _menhir_box_file) _menhir_state
    (** State 07.
        Stack shape : var.
        Start symbol: file. *)

  | MenhirState14 : ((('s, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__, _menhir_box_file) _menhir_state
    (** State 14.
        Stack shape : typ IDENT loption(separated_nonempty_list(COMMA,var)).
        Start symbol: file. *)

  | MenhirState16 : (('s, _menhir_box_file) _menhir_cell1_RETURN, _menhir_box_file) _menhir_state
    (** State 16.
        Stack shape : RETURN.
        Start symbol: file. *)

  | MenhirState17 : (('s, _menhir_box_file) _menhir_cell1_NOT, _menhir_box_file) _menhir_state
    (** State 17.
        Stack shape : NOT.
        Start symbol: file. *)

  | MenhirState18 : (('s, _menhir_box_file) _menhir_cell1_MINUS, _menhir_box_file) _menhir_state
    (** State 18.
        Stack shape : MINUS.
        Start symbol: file. *)

  | MenhirState26 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 26.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState28 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 28.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState30 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 30.
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

  | MenhirState38 : (('s, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS, _menhir_box_file) _menhir_state
    (** State 38.
        Stack shape : expr MINUS.
        Start symbol: file. *)

  | MenhirState40 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 40.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState42 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 42.
        Stack shape : expr.
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

  | MenhirState52 : (('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_state
    (** State 52.
        Stack shape : IF.
        Start symbol: file. *)

  | MenhirState54 : ((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 54.
        Stack shape : IF expr.
        Start symbol: file. *)

  | MenhirState60 : (((('s, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_suite, _menhir_box_file) _menhir_state
    (** State 60.
        Stack shape : IF expr suite.
        Start symbol: file. *)

  | MenhirState63 : (('s, _menhir_box_file) _menhir_cell1_stmt, _menhir_box_file) _menhir_state
    (** State 63.
        Stack shape : stmt.
        Start symbol: file. *)

  | MenhirState68 : (('s, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_state
    (** State 68.
        Stack shape : expr.
        Start symbol: file. *)

  | MenhirState76 : (('s, _menhir_box_file) _menhir_cell1_def, _menhir_box_file) _menhir_state
    (** State 76.
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

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 6 "parser.mly"
       (string)
# 229 "parser.ml"
) * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

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
# 83 "parser.mly"
            ( Int(i) )
# 255 "parser.ml"
     : (Ast.const))

let _menhir_action_02 =
  fun s ->
    (
# 84 "parser.mly"
            ( Str(s) )
# 263 "parser.ml"
     : (Ast.const))

let _menhir_action_03 =
  fun bod nom t xs ->
    let args = 
# 229 "<standard.mly>"
    ( xs )
# 271 "parser.ml"
     in
    (
# 43 "parser.mly"
                                                                                           ({ name = nom ; args = args ; body = bod; return_type = t })
# 276 "parser.ml"
     : (Ast.def))

let _menhir_action_04 =
  fun i ->
    (
# 72 "parser.mly"
                                     ( Const(i) )
# 284 "parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun v ->
    (
# 73 "parser.mly"
                                   ( Val(v) )
# 292 "parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun e1 e2 ->
    let o = 
# 88 "parser.mly"
          ( Add )
# 300 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 305 "parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun e1 e2 ->
    let o = 
# 89 "parser.mly"
          ( Sub )
# 313 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 318 "parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun e1 e2 ->
    let o = 
# 90 "parser.mly"
          ( Mul )
# 326 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 331 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun e1 e2 ->
    let o = 
# 91 "parser.mly"
          ( Div )
# 339 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 344 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun e1 e2 ->
    let o = 
# 92 "parser.mly"
          ( Mod )
# 352 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 357 "parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun e1 e2 ->
    let o = 
# 93 "parser.mly"
          ( Leq )
# 365 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 370 "parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun e1 e2 ->
    let o = 
# 94 "parser.mly"
          ( Geq )
# 378 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 383 "parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun e1 e2 ->
    let o = 
# 95 "parser.mly"
          ( Ge  )
# 391 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 396 "parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun e1 e2 ->
    let o = 
# 96 "parser.mly"
          ( Le  )
# 404 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 409 "parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun e1 e2 ->
    let o = 
# 97 "parser.mly"
          ( Neq )
# 417 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 422 "parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun e1 e2 ->
    let o = 
# 98 "parser.mly"
          ( Eqq  )
# 430 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 435 "parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun e1 e2 ->
    let o = 
# 99 "parser.mly"
          ( And )
# 443 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 448 "parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun e1 e2 ->
    let o = 
# 100 "parser.mly"
          ( Or  )
# 456 "parser.ml"
     in
    (
# 74 "parser.mly"
                                   ( BinOp(o,e1,e2) )
# 461 "parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun e ->
    (
# 75 "parser.mly"
                                   ( Moins(e) )
# 469 "parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun e ->
    (
# 76 "parser.mly"
                                   ( Not(e) )
# 477 "parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun d ->
    (
# 40 "parser.mly"
                    ({ defs = d })
# 485 "parser.ml"
     : (Ast.prog))

let _menhir_action_22 =
  fun v ->
    (
# 79 "parser.mly"
                                   ( Var(v) )
# 493 "parser.ml"
     : (Ast.left_value))

let _menhir_action_23 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 501 "parser.ml"
     : (Ast.def list))

let _menhir_action_24 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 509 "parser.ml"
     : (Ast.def list))

let _menhir_action_25 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 517 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_26 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 525 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_27 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 533 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_28 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 541 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_29 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 549 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_30 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 557 "parser.ml"
     : (Ast.left_value list))

let _menhir_action_31 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 64 "parser.mly"
                                    ( Sbreak, _startpos )
# 566 "parser.ml"
     : (Ast.stmt))

let _menhir_action_32 =
  fun _startpos__1_ ->
    let _startpos = _startpos__1_ in
    (
# 65 "parser.mly"
                                    ( Scontinue, _startpos )
# 575 "parser.ml"
     : (Ast.stmt))

let _menhir_action_33 =
  fun _startpos__1_ e ->
    let _startpos = _startpos__1_ in
    (
# 66 "parser.mly"
                                    ( Sreturn(e), _startpos )
# 584 "parser.ml"
     : (Ast.stmt))

let _menhir_action_34 =
  fun _startpos_e1_ e1 e2 ->
    let _startpos = _startpos_e1_ in
    (
# 67 "parser.mly"
                                    ( Sassign(e1, e2), _startpos )
# 593 "parser.ml"
     : (Ast.stmt))

let _menhir_action_35 =
  fun _startpos_e_ e ->
    let _startpos = _startpos_e_ in
    (
# 68 "parser.mly"
                                    ( Sval(e), _startpos )
# 602 "parser.ml"
     : (Ast.stmt))

let _menhir_action_36 =
  fun s ->
    (
# 58 "parser.mly"
                               (s)
# 610 "parser.ml"
     : (Ast.stmt))

let _menhir_action_37 =
  fun _startpos__1_ e s_else s_if ->
    let _startpos = _startpos__1_ in
    (
# 59 "parser.mly"
                                                                     ( Sif_else(e, s_if, s_else), _startpos )
# 619 "parser.ml"
     : (Ast.stmt))

let _menhir_action_38 =
  fun _startpos__1_ e s_if ->
    let _startpos = _startpos__1_ in
    (
# 60 "parser.mly"
                                       ( Sif(e, s_if),  _startpos )
# 628 "parser.ml"
     : (Ast.stmt))

let _menhir_action_39 =
  fun _startpos_s_ s ->
    let _startpos = _startpos_s_ in
    (
# 54 "parser.mly"
                 ( Sblock(s), _startpos )
# 637 "parser.ml"
     : (Ast.stmt))

let _menhir_action_40 =
  fun () ->
    (
# 50 "parser.mly"
          ( Int )
# 645 "parser.ml"
     : (Ast.typ))

let _menhir_action_41 =
  fun () ->
    (
# 51 "parser.mly"
          ( Void )
# 653 "parser.ml"
     : (Ast.typ))

let _menhir_action_42 =
  fun nom t ->
    (
# 46 "parser.mly"
                          ( Def(t, nom) )
# 661 "parser.ml"
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
  
  let rec _menhir_run_73 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let d = _v in
      let _v = _menhir_action_21 d in
      MenhirBox_file _v
  
  let rec _menhir_run_77 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_def -> _ -> _menhir_box_file =
    fun _menhir_stack _v ->
      let MenhirCell1_def (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_24 x xs in
      _menhir_goto_list_def_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_def_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState76 ->
          _menhir_run_77 _menhir_stack _v
      | MenhirState00 ->
          _menhir_run_73 _menhir_stack _v
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
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_41 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05 _tok
              | INT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_40 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05 _tok
              | RP ->
                  let _v = _menhir_action_27 () in
                  _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (nom, t) = (_v_0, _v) in
          let _v = _menhir_action_42 nom t in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_41 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
              | INT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_40 () in
                  _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
              | _ ->
                  _eRR ())
          | RP ->
              let x = _v in
              let _v = _menhir_action_29 x in
              _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_var_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState05 ->
          _menhir_run_11_spec_05 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState07 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_11_spec_05 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_28 x in
      _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState05
  
  and _menhir_run_12 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
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
              _menhir_run_23_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | RETURN ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
          | NOT ->
              _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
          | MINUS ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
          | IF ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
          | IDENT _v_2 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v_3 =
                let v = _v_2 in
                _menhir_action_22 v
              in
              let (_startpos_v_, v) = (_startpos, _v_3) in
              let _v = _menhir_action_05 v in
              _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState14 _tok
          | CST _v_5 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos, _v_5) in
              let _v = _menhir_action_01 i in
              _menhir_run_23_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | CONTINUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_31 _startpos__1_ in
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState14 _tok
          | BREAK ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_32 _startpos__1_ in
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState14 _tok
          | RB ->
              let _v = _menhir_action_25 () in
              _menhir_run_70_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_14 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState14 _tok
  
  and _menhir_run_67 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STR _v_0 ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_s_, s) = (_startpos_1, _v_0) in
              let _v = _menhir_action_02 s in
              _menhir_run_23_spec_68 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | NOT ->
              _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
          | MINUS ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
          | IDENT _v_3 ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v_5 =
                let v = _v_3 in
                _menhir_action_22 v
              in
              let (_startpos_v_, v) = (_startpos_4, _v_5) in
              let _v = _menhir_action_05 v in
              _menhir_run_69 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState68 _tok
          | CST _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos_8, _v_7) in
              let _v = _menhir_action_01 i in
              _menhir_run_23_spec_68 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | _ ->
              _eRR ())
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let (_startpos_e_, e) = (_startpos, _v) in
          let _v = _menhir_action_35 _startpos_e_ e in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_26 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let v = _v in
          let _v = _menhir_action_05 v in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_26 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_26 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_27 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_08 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState68 ->
          _menhir_run_69 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState14 ->
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState54 ->
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState60 ->
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState63 ->
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
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
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState34 ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState32 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState30 ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState28 ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState26 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState16 ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState17 ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState18 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_69 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_34 _startpos_e1_ e1 e2 in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_28 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState28
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState28 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_28 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_28 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState28 _tok
  
  and _menhir_run_29 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | EQQ | GE | GEQ | LB | LE | LEQ | MINUS | NEQ | OR | PLUS | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_06 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_30 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState30
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let v = _v in
          let _v = _menhir_action_05 v in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_30 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_31 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_10 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_17 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState17
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState17
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let v = _v in
          let _v = _menhir_action_05 v in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_17 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_17 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_24 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_20 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_18 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let v = _v in
          let _v = _menhir_action_05 v in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_18 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_22 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_19 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_32 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState32
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let v = _v in
          let _v = _menhir_action_05 v in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | CST _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_32 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_32 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_33 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_09 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_34 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_34 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState34 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_34 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_34 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState34 _tok
  
  and _menhir_run_35 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ | LB | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_18 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_36 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_36 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState36
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState36 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_36 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_36 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState36 _tok
  
  and _menhir_run_37 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | LB | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_15 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_38 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
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
          _menhir_run_23_spec_38 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState38
      | IDENT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos_1, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState38 _tok
      | CST _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_2, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_38 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_38 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState38 _tok
  
  and _menhir_run_39 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr _menhir_cell0_MINUS as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | EQQ | GE | GEQ | LB | LE | LEQ | MINUS | NEQ | OR | PLUS | SEMICOLON ->
          let MenhirCell0_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_07 e1 e2 in
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
          _menhir_run_23_spec_40 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState40
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState40 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_40 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_40 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState40 _tok
  
  and _menhir_run_41 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | EQQ | LB | NEQ | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_11 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_42 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STR _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_02 s in
          _menhir_run_23_spec_42 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState42
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState42 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_42 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_42 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState42 _tok
  
  and _menhir_run_43 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | EQQ | LB | NEQ | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_14 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
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
          _menhir_run_23_spec_44 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState44 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_44 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_44 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState44 _tok
  
  and _menhir_run_45 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | EQQ | LB | NEQ | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_12 e1 e2 in
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
          _menhir_run_23_spec_46 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState46
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState46 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_46 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_46 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState46 _tok
  
  and _menhir_run_47 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | EQQ | LB | NEQ | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_13 e1 e2 in
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
          _menhir_run_23_spec_48 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState48
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState48 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_48 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_48 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState48 _tok
  
  and _menhir_run_49 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | LB | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_16 e1 e2 in
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
          _menhir_run_23_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState50
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState50 _tok
      | CST _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_50 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_50 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState50 _tok
  
  and _menhir_run_51 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | EQ | LB | OR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_17 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_simple_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
  
  and _menhir_run_64 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_s_, s) = (_startpos, _v) in
          let _v = _menhir_action_36 s in
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
          _menhir_run_23_spec_63 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | RETURN ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | IF ->
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState63
      | IDENT _v_3 ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v_5 =
            let v = _v_3 in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos_4, _v_5) in
          let _v = _menhir_action_05 v in
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState63 _tok
      | CST _v_7 ->
          let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_8, _v_7) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_63 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | CONTINUE ->
          let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_10 in
          let _v = _menhir_action_31 _startpos__1_ in
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState63 _tok
      | BREAK ->
          let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_12 in
          let _v = _menhir_action_32 _startpos__1_ in
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState63 _tok
      | RB ->
          let _v = _menhir_action_25 () in
          _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_63 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState63 _tok
  
  and _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
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
          _menhir_run_23_spec_16 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState16
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState16
      | IDENT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos_1, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState16 _tok
      | CST _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_2, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_16 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_16 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState16 _tok
  
  and _menhir_run_25 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_33 _startpos__1_ e in
          _menhir_goto_simple_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_52 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
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
          _menhir_run_23_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
      | NOT ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MINUS ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | IDENT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let v = _v in
            _menhir_action_22 v
          in
          let (_startpos_v_, v) = (_startpos_1, _v) in
          let _v = _menhir_action_05 v in
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState52 _tok
      | CST _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos_i_, i) = (_startpos_2, _v) in
          let _v = _menhir_action_01 i in
          _menhir_run_23_spec_52 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_52 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_IF -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState52 _tok
  
  and _menhir_run_53 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_file) _menhir_state -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LB ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STR _v_0 ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_s_, s) = (_startpos_1, _v_0) in
              let _v = _menhir_action_02 s in
              _menhir_run_23_spec_54 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
          | RETURN ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | NOT ->
              _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | MINUS ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | IF ->
              _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState54
          | IDENT _v_3 ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v_5 =
                let v = _v_3 in
                _menhir_action_22 v
              in
              let (_startpos_v_, v) = (_startpos_4, _v_5) in
              let _v = _menhir_action_05 v in
              _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState54 _tok
          | CST _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos_i_, i) = (_startpos_8, _v_7) in
              let _v = _menhir_action_01 i in
              _menhir_run_23_spec_54 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
          | CONTINUE ->
              let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_10 in
              let _v = _menhir_action_31 _startpos__1_ in
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState54 _tok
          | BREAK ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_12 in
              let _v = _menhir_action_32 _startpos__1_ in
              _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState54 _tok
          | RB ->
              let _v = _menhir_action_25 () in
              _menhir_run_70_spec_54 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v
          | _ ->
              _eRR ())
      | GEQ ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQQ ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_54 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState54 _tok
  
  and _menhir_run_70_spec_54 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v ->
      let _v =
        let (_startpos_s_, s) = (_startpos, _v) in
        _menhir_action_39 _startpos_s_ s
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_suite (_menhir_stack, MenhirState54, _v) in
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
                  _menhir_run_23_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_s_ _v _tok
              | RETURN ->
                  _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
              | NOT ->
                  _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
              | MINUS ->
                  _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
              | IF ->
                  _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
              | IDENT _v_2 ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v_3 =
                    let v = _v_2 in
                    _menhir_action_22 v
                  in
                  let (_startpos_v_, v) = (_startpos, _v_3) in
                  let _v = _menhir_action_05 v in
                  _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_v_ _v MenhirState60 _tok
              | CST _v_5 ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos_i_, i) = (_startpos, _v_5) in
                  let _v = _menhir_action_01 i in
                  _menhir_run_23_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v _tok
              | CONTINUE ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_31 _startpos__1_ in
                  _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState60 _tok
              | BREAK ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_32 _startpos__1_ in
                  _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState60 _tok
              | RB ->
                  let _v = _menhir_action_25 () in
                  _menhir_run_70_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | BREAK | CONTINUE | CST _ | IDENT _ | IF | MINUS | NOT | RB | RETURN | STR _ ->
          let MenhirCell1_expr (_menhir_stack, _, e, _) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let s_if = _v in
          let _v = _menhir_action_38 _startpos__1_ e s_if in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_60 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_suite -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState60 _tok
  
  and _menhir_run_70_spec_60 : type  ttv_stack. (((ttv_stack, _menhir_box_file) _menhir_cell1_IF, _menhir_box_file) _menhir_cell1_expr, _menhir_box_file) _menhir_cell1_suite -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v ->
      let _v =
        let (_startpos_s_, s) = (_startpos, _v) in
        _menhir_action_39 _startpos_s_ s
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_suite (_menhir_stack, _, s_if) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e, _) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let s_else = _v in
      let _v = _menhir_action_37 _startpos__1_ e s_else s_if in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_66 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_stmt -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x, _startpos_x_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_26 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_x_ _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_file) _menhir_state -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s ->
      match _menhir_s with
      | MenhirState14 ->
          _menhir_run_70_spec_14 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v
      | MenhirState54 ->
          _menhir_run_70_spec_54 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v
      | MenhirState60 ->
          _menhir_run_70_spec_60 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v
      | MenhirState63 ->
          _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_70_spec_14 : type  ttv_stack. ((ttv_stack, _menhir_box_file) _menhir_cell1_typ _menhir_cell0_IDENT, _menhir_box_file) _menhir_cell1_loption_separated_nonempty_list_COMMA_var__ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v ->
      let _v =
        let (_startpos_s_, s) = (_startpos, _v) in
        _menhir_action_39 _startpos_s_ s
      in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_var__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, nom, _) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let bod = _v in
      let _v = _menhir_action_03 bod nom t xs in
      let _menhir_stack = MenhirCell1_def (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState76 _tok
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState76 _tok
      | EOF ->
          let _v = _menhir_action_23 () in
          _menhir_run_77 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_23_spec_68 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _tok ->
      let (_startpos_i_, i) = (_startpos, _v) in
      let _v = _menhir_action_04 i in
      _menhir_run_69 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_i_ _v MenhirState68 _tok
  
  and _menhir_run_10 : type  ttv_stack. (ttv_stack, _menhir_box_file) _menhir_cell1_var -> _ -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_30 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_file =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_40 () in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | EOF ->
          let _v = _menhir_action_23 () in
          _menhir_run_73 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let file =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_file v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
