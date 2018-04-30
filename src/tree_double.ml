(* 2分木 *)
type tree_t = Empty |
	Leaf of int |
	Node of tree_t * int * tree_t

let tree1 = Empty
let tree2 = Leaf(2)
let tree3 = Node(tree1, 3, tree2)
let tree4 = Node(tree3, 4, tree2)


(* 目的：木の値をすべて2倍にした合計を返す *)
(* tree_double：tree_t -> int *)
let rec tree_double tree = match tree with
	Empty -> 0 |
	Leaf(n) -> n * 2 |
	Node(left, n, right) ->  (tree_double left) + n * 2 + (tree_double right)

(* テスト *)
let test1 = tree_double tree1 = 0
let test2 = tree_double tree2 = 4
let test3 = tree_double tree3 = 10
let test4 = tree_double tree4 = 22
