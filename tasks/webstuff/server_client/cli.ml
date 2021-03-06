open Lwt
open Core.Std
open Cohttp
open Cohttp_lwt_unix

let header_to_string x = Header.to_lines (x) |> List.to_string ~f:(ident)

let body =
  Client.get (Uri.of_string "") >>= fun (resp, body) ->
    let code = resp |> Response.status |> Code.code_of_status in
    Printf.printf "Response code: %d\n" code;
            Printf.printf "Headers: %s\n" (resp |> Response.headers |> header_to_string);
              body |> Cohttp_lwt_body.to_string >|= fun body ->
                Printf.printf "Body of length: %d\n" (String.length body);
                    body

let () =
  let body = Lwt_main.run body in
  print_endline ("Received body\n" ^ body)
