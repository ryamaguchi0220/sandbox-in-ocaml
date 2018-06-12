let rec enumrate n = if n = 0 then []
	else n :: enumrate (n - 1)

(* 1から受け取った自然数nまでの合計を返す *)
(* one_to_n: int -> int *)
let one_to_n n = List.fold_right (+) (enumrate n) 0

let test1 = one_to_n 0 = 0
let test2 = one_to_n 1 = 1
let test3 = one_to_n 5 = 15
