(* This will not work:
  *
 *      Doubler.double 2 
 *
 * This is because it expects it to be a "dint" 
 *
 * which is a special type of int we created
 * in the `.mli` file under the name of 't'
 *
 * Look in doubler.mli file for more info.
 **)

2 (*pass the 2 through each function, top to bottom*)
|> Doubler.to_dint (* convert to dint                       *)
|> Doubler.double  (* number is actually doubled            *)
|> Doubler.to_int  (* dint back to int                      *)
|> print_int       (* print it with a normal 'int' function *)
