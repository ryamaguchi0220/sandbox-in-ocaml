(* 目的：時間xに応じて午前か午後を返す *)
(* jikan：int -> string *)
let jikan x  = if x < 12 then "午前" else "午後"

(* テスト *)
let test1 = jikan 11 = "午前"
let test2 = jikan 12 = "午後"
let test3 = jikan 5 = "午前"
let test4 = jikan 15 = "午後"
