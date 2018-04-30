type persion_t = {
	name : string;
	height : float;
	weight : float;
	birth_month : int;
	birth_year : int;
	blood_type : string;
}

let gakusei1 = {name = "nakamura"; tensuu=90; seiseki="A"}
let gakusei2 = {name = "miyahara"; tensuu=80; seiseki="A"}
let gakusei3 = {name = "sato"; tensuu=75; seiseki="B"}
let gakusei4 = {name = "idehara"; tensuu=70; seiseki="B"}
let gakusei5 = {name = "tsubata"; tensuu=65; seiseki="C"}
let gakusei6 = {name = "asai"; tensuu=65; seiseki="C"}

(* 目的：昇順に並んでいるlstの正しい位置にgakuseiを挿入すする *)
(* gakusei_insert: gakusei_t list -> gakusei_t ->gakusei_t list *)
let rec count_ketsueki lst blood_type = match lst with
	[] -> 0 |
	head :: tail ->
		if head.blood_type = blood_type then 1 + count_ketsueki tail blood_type
		else count_ketsueki tail blood_type

(* テスト *)
let test1 = gakusei_insert [] gakusei1 = [gakusei1]
let test2 = gakusei_insert [gakusei1] gakusei2 = [gakusei2; gakusei1]
let test3 = gakusei_insert [gakusei2] gakusei1 = [gakusei2; gakusei1]
let test4 = gakusei_insert [gakusei6; gakusei5; gakusei3; gakusei2; gakusei1] gakusei4 = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1] 


(* 目的：gakusei_t listをgakusei_t#tensuuの昇順にソートする *)
(* gakusei_sort: gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
	[] -> [] |
	head :: tail -> gakusei_insert (gakusei_sort tail) head

(* テスト *)
let test5 = gakusei_sort [] = []
let test6 = gakusei_sort [gakusei1] = [gakusei1]
let test7 = gakusei_sort [gakusei1; gakusei2] = [gakusei2; gakusei1]
let test8 = gakusei_sort [gakusei2; gakusei1] = [gakusei2; gakusei1]
let test9 = gakusei_sort [gakusei2; gakusei3; gakusei5; gakusei1; gakusei4; gakusei6] = [gakusei5; gakusei6; gakusei4; gakusei3; gakusei2; gakusei1]
