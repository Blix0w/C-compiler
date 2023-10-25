%{
  open Ast
%}
%token <string> CST
%token <string> STR
%token <string> IDENT
%token INT VOID 
%token IF ELSE
%token RETURN BREAK CONTINUE
%token SIZEOF
%token PRINT_INT PRINT_STRING
%token LP RP
%token RB LB 
%token COMMA SEMICOLON
%token EQ
%token OR AND EQQ NEQ LE LEQ GE GEQ
%token EOF
%token PLUS MINUS TIMES DIV MOD
%token NOT ESP STAR

/* D�finitions des priorit�s et associativit�s des tokens */

%right EQ
%left OR
%left AND
%nonassoc EQQ NEQ
%nonassoc LE LEQ GE GEQ
%left PLUS MINUS 
%left TIMES DIV MOD
%nonassoc uminus NOT ESP STAR

/* Point d'entr�e de la grammaire */
%start file

/* Type des valeurs retourn�es par l'analyseur syntaxique */
%type <Ast.prog> file

%%

file: d = def*; EOF {{ defs = d }}
;
  
def: t = typ; nom = IDENT; LP; args = separated_list(COMMA, var); RP; LB; bod = suite; RB  {{ name = nom ; args = args ; body = bod; return_type = t }}
;

var: t = typ; l = left_value { Def(t, l) }
;

typ:
  | INT   { Int }
  | VOID  { Void }
;

suite: s = stmt* { Sblock(s), $startpos }
;

stmt:
  | s = simple_stmt; SEMICOLON {s}
  | IF; e = expr; LB; s_if = suite; RB; ELSE; LB; s_else = suite; RB { Sif_else(e, s_if, s_else), $startpos }
  | IF; e = expr; LB; s_if = suite; RB { Sif(e, s_if),  $startpos }
;

simple_stmt:
  | CONTINUE                        { Sbreak, $startpos }
  | BREAK                           { Scontinue, $startpos }
  | RETURN; e = expr                { Sreturn(e), $startpos }
  | e1 = expr; EQ; e2 = expr        { Sassign(e1, e2), $startpos }
  | e = expr                        { Sval(e), $startpos }
;

expr:
  | i = const                       { Const(i) }
  | v = left_value                 { Val(v) }
  | e1 = expr o = op e2 = expr     { BinOp(o,e1,e2) }
  | MINUS e = expr %prec uminus    { Moins(e) } 
  | NOT e = expr                                            { Not(e) }
  | nom = IDENT; LP; args = separated_list(COMMA, expr); RP  { Ecall(nom, args) }
  | LP e = expr RP                 { e }
;

left_value: v = IDENT              { Var(v) }
;

const:
  | i = CST { Int(i) }
  | s = STR { Str(s) }
;

%inline op:
  | PLUS  { Add }
  | MINUS { Sub }
  | TIMES { Mul }
  | DIV   { Div }
  | MOD   { Mod }
  | LEQ   { Leq }
  | GEQ   { Geq }
  | GE    { Ge  }
  | LE    { Le  }
  | NEQ   { Neq }
  | EQQ   { Eqq  }
  | AND   { And }
  | OR    { Or  } 
  ;