%{
  open Ast
%}

%token INT VOID
%token IF ELSE
%token RETURN BREAK CONTINUE
%token SIZEOF
%token PRINT_INT PRINT_STRING
%token LP RP
%token RB LB 
%token COMMA SEMICOLON
%token EQ
%token OR AND DEQ NEQ LE LEQ GE GEQ
%token EOF
%token PLUS MINUS TIMES DIV MOD
%token NOT ESP STAR

/* D�finitions des priorit�s et associativit�s des tokens */

%right EQ
%left OR
%left AND
%nonassoc DEQ NEQ
%nonassoc LE LEQ GE GEQ
%left PLUS MINUS 
%left TIMES DIV MOD
%nonassoc uminus NOT ESP STAR

/* Point d'entr�e de la grammaire */
%start prog

/* Type des valeurs retourn�es par l'analyseur syntaxique */
%type <Ast.program> prog

%%

prog:
| p = list(stmt) EOF { p }
;
 
stmt:
| PRINT e = expr             { Print e }
| READ id = IDENT             { Read id }
| FUNCTION id = IDENT LP arg = IDENT RP COLON e = expr             { Function(id,arg,e) }
;
 
type stmt = stmt_node*Lexing.position

stmt_node:
  | Sif of expr*stmt*stmt
  | Sblock of stmt list
  | Sreturn of expr
  | Sassign of expr*expr
  | Sval of expr

left_value:
  | s =   Var of string

expr:
  | Val = left_value
  | UnOp of expr
  | BinOp of binop * expr*expr
  | Ecall of string*expr list


expr:
| c = CST                        { Cst c }
| fct = IDENT LP arg = expr RP                 { Call(fct,arg) }
| id = IDENT                     { Var id }
| e1 = expr o = op e2 = expr     { Binop (o, e1, e2) }
| MINUS e = expr %prec uminus    { Binop (Sub, Cst 0, e) } 
| LET id = IDENT EQ e1 = expr IN e2 = expr 
                                 { Letin (id, e1, e2) }
| LP e = expr RP                 { e }
;

%inline op:
| PLUS  { Add }
| MINUS { Sub }
| TIMES { Mul }
| DIV   { Div }
;



