(*
 * NOTE: everything is impicitly in a module with the same name as the file, except capitalized
 * For istance, this file is named `types.ml` so it will implicitly be in a module named Types
 *
 * Accessing somthing from the inside this module would be done with the `.` operator. Like if I wanted to refrence
 * the type `double` defined below I would do, "Types.double" in another module.
 *
 * Also there's allowed to be a signiture file
 * *)

type t = int

open Core.Std;;

let get_number x = x
let to_doubler x = x

let double x = x * x;; (* in module Types.double *)


(* because of the implicit module mentioned above this is actually a module defined inside of another one.
 * this means that you could access this via `Types.Bar.t` *)

(*
module Bar : sig
  type t (* this is a abstract type*)
  (* it has no underlying datastructure
   *  untill some other module implements it
   * *)
end
*)
