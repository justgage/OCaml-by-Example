# Using types to make bad states unrepresentable

How can we do this?

Look at `types.mli `to start. 

In this file we deine the abstract type `t`. It's abstract because you don't say what concrete system types like "int" or "string" it's made out of inside of the `types.mli` file. Because the `.mli` is an interface, meaning it's a whitelist of things inside the module that you can access.

If you look inside of the the `types.ml` file you'll notice that type is defined there as an int. Because this wasn't defined inside of the `mli` file the real type becomes __private__.

Now we need explicit methods to transfer a type to and from the type `t`. They are trivial to write because OCaml is really only doing complile time checks for them and will really just be ints.
