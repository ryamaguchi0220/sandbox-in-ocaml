(* 目的：文字列listであるlstの要素を前から順に結合した文字列を返す *)
(* concat：string list -> string *)
let rec concat lst = match lst with
	[] -> "" |
	head :: tail -> head ^ concat tail 

(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["春"] = "春"
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
