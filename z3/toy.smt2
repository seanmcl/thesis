(set-option :produce-proofs true)
(declare-datatypes () ((Node a b c)))

(declare-fun edge (Node Node) Bool)
(declare-fun path (Node Node) Bool)

(assert (edge a b))
(assert (edge b c))
(assert (forall ((x Node) (y Node)) (implies (edge x y) (path x y))))
(assert (forall ((x Node) (y Node) (z Node)) (implies (and (path x y) (path y z)) (path x z))))

(assert (not (path a c)))

(check-sat)
(get-proof)
;(get-model)
