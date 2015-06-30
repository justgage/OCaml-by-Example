open Lwt
open Core.Std
open Cohttp
open Cohttp_lwt_unix

let header_to_string x = x  |> Header.to_lines |> List.to_string ~f:(ident)

let server =
  let callback _conn req body =
    let uri = req |> Request.uri |> Uri.to_string in
    let meth = req |> Request.meth |> Code.string_of_method in
    let headers = req |> Request.headers |> header_to_string in
    body |> Cohttp_lwt_body.to_string >|= (fun body ->
      (Printf.sprintf "Uri: %s\nMethod: %s\nHeaders\nHeaders: %s\nBody: %s"
                                       uri meth headers body))
    >>= (fun body -> Server.respond_string ~status:`OK ~body ())
    in Server.create ~mode:(`TCP (`Port 8000)) (Server.make ~callback ())

let () = ignore (Lwt_main.run server)
