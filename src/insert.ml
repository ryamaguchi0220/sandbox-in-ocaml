(* 目的：昇順にソートされた整数リストlstと整数nを受け取り、昇順となる位置にnを挿入したリストを返す *)
(* insert:int list -> int -> int list *)
let rec insert lst n = match lst with
	[] -> n :: [] |
	head :: tail -> if head >= n then n :: lst
			else head :: insert tail n 

(* テスト *)
let test1 = insert [] 1 = [1]
let test2 = insert [1] 1 = [1; 1]
let test3 = insert [1] 2 = [1; 2]
let test4 = insert [2] 1 = [1; 2]
let test5 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
