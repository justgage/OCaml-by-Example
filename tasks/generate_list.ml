open Printf;;

let ls () = Sys.readdir ".";;

let print_li item = printf " - %s\n" item;;

printf "# Tutorials:\n\n";;

let () =
  Array.itter print_li (ls ());;


