(* 目的：整数listであるlstの中から偶数のみを抽出した整数リストを返す *)
(* even：int list -> int list *)
let rec even lst = match lst with
	[] -> [] |
	head :: tail -> if head mod 2 = 0 then head :: even tail
			else even tail  

(* テスト *)
let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [2] = [2]
let test4 = even [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 4; 6; 8; 10]
