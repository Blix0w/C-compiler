type stmt = stmt_node*Lexing.position

and stmt_node =
  | Sif of expr*stmt
  | Sif_else of expr*stmt*stmt
  | Sblock of stmt list
  | Sreturn of expr
  | Sassign of left_value*expr
  | Sval of expr
  | Sbreak 
  | Scontinue
and left_value =
  | Var of string
  | Def of typ*left_value
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
type def = { name : string ; args : left_value list ; body : stmt ;  return_type : typ}
and prog = { defs : def list ; } 

type iprogram = (string*iAST) list * (string*int) list
and iAST =
  | Iif of iexpr*iAST*iAST
  | Iblock of iAST list
  | Ireturn of iexpr 
  | Iassign of ileft_value*iexpr
  | Ival of iexpr
  | Ibreak
  | Icontinue
and ivalue =
  | Ileft of ileft_value 
  | Iconst of int
and ileft_value = pos * int (* position in memory and size *)
and pos =
  | Ilocal of int (* offset to FP *)
  | Iglobal of string (* label *)
  | Ideref of iexpr (* for pointers *)
and iexpr =
  | Iunop of ivalue 
  | Ibinop of binop * ivalue * ivalue
  | Icall of pos * string * int (* label + offset *)