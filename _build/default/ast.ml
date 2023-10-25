type stmt = stmt_node*Lexing.position

and stmt_node =
  | Sif of expr*stmt
  | Sif_else of expr*stmt*stmt
  | Sblock of stmt list
  | Sreturn of expr
  | Sassign of expr*expr
  | Sval of expr
  | Sbreak 
  | Scontinue
and left_value =
  | Var of string
  | Def of typ*string
and typ =
  | Int
  | Void
and expr =
  | Const of const
  | Val of left_value
  | Moins of expr
  | BinOp of binop * expr*expr
  | Ecall of string*expr list
  | Not of expr
and const = 
  | Int of string
  | Str of string
and binop = 
  | Add
  | Sub
  | Mul
  | Div
  | Mod
  | Leq
  | Geq
  | Ge
  | Le
  | Neq
  | Eqq
  | And
  | Or
type def = { name : string ; args : string list ; body : stmt ;  return_type : typ}
and prog = { defs : def list ; } 
(*
type iprogram = (string*iAST) list * (string*int) list
and iAST =
  | Iif of expr*iAST*iAST | Iblock of iAST list
  | Ireturn of expr | Iassign of left_value*expr
  | Ival of expr
and value =
  | Ileft of left_value | Iconst of int
and left_value = pos * int (* position in memory and size *)
and pos =
  | Ilocal of int (* offset to FP *)
  | Iglobal of string (* label *)
  | Ideref of expr (* for pointers *)
and expr =
  | Iunop of value | Ibinop of binop * value * value
  | Icall of pos * string * int (* label + offset *)
*)