(* 目的：0 ~ 受け取った自然数n までの2乗の和を返す *)
(* sum_of_square: int -> int *)
let rec sum_of_square n =
	 if n = 0 then 0
	 else n * n + sum_of_square (n - 1) 

(* テスト *)
let test1 = sum_of_square 0 = 0
let test2 = sum_of_square 1 = 1
let test3 = sum_of_square 2 = 5
let test4 = sum_of_square 4 = 30
