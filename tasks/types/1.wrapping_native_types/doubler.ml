e(* NOTE: everything is impicitly in a module with 
 * the same name as the file, except capitalized
 * For istance, this file is named `doubler.ml` so it
 * will implicitly be in a module named Double
 *
 * Accessing somthing from the inside this module
 * would be done with the `.` operator. 
 ***)
type t = int

open Core.Std;;

(* NOTE: these are trivial functions because we are just using the type system
 * to enforce that we don't mix up a `dint` with an `int` unless we explicitly use 
 * these functions *)
let to_int  x = x;;
let to_dint x = x;;

(* Double an int with a normal int function *)
let double x = x * x;;
