
exception VarUndef of string
  (** exception levee pour signaler une variable non declaree *)

val compile_program : Ast.program -> string -> unit
  (** [compile_program p f] compile le programme [p] et ecrit le code MIPS
      correspondant dans le fichier [f] *)

