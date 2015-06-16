(* this file the `interface` or `signiture` file. This defines
 * a whitelist (of the things in the corisponding `ml` file)
 * that are public to other Modules, everything that is not
 * listed is private *)

(* this `t` is an abstract type, meaning one that has
 * no real connection to any primitive datatype that OCaml has
 * till it's implemented. Remember how I said that, this file
 * defines what's public? Because only the definition is listed
 * here and not the implementation, that's all that's public!
 *
 * This creates an intersting effect. This allows us to wrap primitives
 * like `string` or `int` int our own types that we define
 * like `username` or `us_dollars`. This makes it impossible for
 * you to accidently pass anything that is not of that type. Meaning that
 * gone are the days that you could mix to similar things like "buyer_credit_card"
 * and "seller_credit_card"
 *
 * this will be "dints" which are ints that
 * can only be doubled and nothing else done to them *)

type t

(* NOTE: it's kind of a idiom to name this `t` in modules
 * that are descriptive of the type. For instance there's probaly
 * a `t` inside of the module `Calendar` which would be the abstract
 * type for the Calendar. If the module isn't then you should probably
 * name it somthing different or (probably better) rename your module.
 *
 * The main reason it's done is because if you want to access the type directly it
 * would be `Calendar.t` instead fo somthing redundant like Calendar.calendar. *)


(* this will double the the number *)
val double : t -> t

(* this will convert dints into ints*)
val to_int : t -> int

(* this will convert ints into dints*)
val to_dint : int -> t

