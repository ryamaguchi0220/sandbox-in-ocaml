(* 目的：整数リストlstを昇順にソートした整数リストを返す *)
(* ins_sort: int list -> int list *)
let rec ins_sort lst = match lst with
	[] -> [] |
	head :: tail -> insert (ins_sort tail) head 

(* テスト *)
let test1 = ins_sort [] = []
let test2 = ins_sort [1]  = [1]
let test3 = ins_sort [1; 2] = [1; 2]
let test4 = ins_sort [2; 1] = [1; 2]
let test5 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
