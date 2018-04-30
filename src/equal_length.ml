(* 目的：2つのlistの長さが同じかどうかを返す *)
(* equals_length：'a list -> 'a list -> boolean *)
let rec equal_length lst1 lst2 = match (lst1, lst2) with
	([], []) -> true |
	([], head :: tail) -> false |
	(head :: tail, []) -> false |
	(head1 :: tail1, head2 :: tail2) -> equal_length tail1 tail2 

(* テスト *)
let test1 = equal_length [] [] = true
let test2 = equal_length [] [1] = false
let test3 = equal_length [1] [] = false
let test4 = equal_length [1] [1] = true
let test5 = equal_length ["a"; "b"; "c"; "d"] ["e"; "f"; "g"] = false
let test6 = equal_length ["a"; "b"; "c"; "d"] ["e"; "f"; "g"; "h"] = true
