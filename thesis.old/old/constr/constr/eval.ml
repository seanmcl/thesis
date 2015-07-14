
open Core.Std

module M : sig
  type t =
  | Const
  | Unop of (int -> int) * t
  | Binop of (int -> int -> int) * t * t
  val eval : t -> int list -> int * int list
end = struct
  type t =
  | Const
  | Unop of (int -> int) * t
  | Binop of (int -> int -> int) * t * t

  let rec eval t l = match t with
  | Const -> (match l with [] -> failwith "Bad inputs" | x :: l -> (x, l))
  | Unop (f, t) ->
    let (n1, l) = eval t l in
    (f n1, l)
  | Binop (f, t1, t2) ->
    let n1, l = eval t1 l in
    let n2, l = eval t2 l in
    (f n1 n2, l)
end


module F (M : sig
  type ('a, 'b) t

  val eval  : (int, 'a) t -> 'a
  val const : ('a, int -> 'a) t
  val unop  : (int -> int) -> (int -> 'a, 'b) t -> ('a, int -> 'b) t
  val binop
    :  (int -> int -> int)
    -> ('a, int -> 'b) t
    -> ('c, int -> 'd) t -> ('e, 'f) t
end) = struct
  open M

  let _ = eval const 5 == 5
  let _ = eval (unop (fun x -> -x) const) 5 == -5
  let _ = eval (binop (+) const const) 5 5 == 10
  let _ = eval (binop (+) (unop (-) const) const) 5 5 == 0

  let _ = eval (binop (+) (binop (+) const const) const) 5 5 5 == 15
  let _ = eval (binop (+) const (binop (+) const const)) 5 5 5 == 15

(* 'b * 'e -> f ++ 'a -> 'b  ++ 'c -> 'd -> 'e ---> 'a -> 'c -> 'd -> f *)

(* (binop (+) const) : ('a, 'b) t -> ( *)
(* (binop (+) const) const : int -> ? *)


end
