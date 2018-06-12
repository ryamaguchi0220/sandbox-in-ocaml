let rec enumrate n = if n = 0 then []
	else n :: enumrate (n - 1)

(* nの累乗を返す *)
(* fac: int -> int *)
let fac n = List.fold_right ( * ) (enumrate n) 1 

let test2 = fac 1 = 1
let test3 = fac 6 = 720
