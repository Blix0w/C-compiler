
(* The type of tokens. *)

type token = 
  | VOID
  | TIMES
  | STR of (string)
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
  | IDENT of (string)
  | GEQ
  | GE
  | ESP
  | EQQ
  | EQ
  | EOF
  | ELSE
  | DIV
  | CST of (string)
  | CONTINUE
  | COMMA
  | BREAK
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)
