(set-logic HORN)
(declare-datatypes ((Nat_0 0)) (((Z_1 ) (S_0 (unS_0 Nat_0)))))
(declare-fun diseqNat_0 (Nat_0 Nat_0) Bool)
(declare-fun unS_1 (Nat_0 Nat_0) Bool)
(declare-fun isZ_0 (Nat_0) Bool)
(declare-fun isS_0 (Nat_0) Bool)
(assert (forall ((x_4 Nat_0) (x_3 Nat_0))
	(=> (= x_4 (S_0 x_3))
	    (unS_1 x_3 x_4))))
(assert (isZ_0 Z_1))
(assert (forall ((x_5 Nat_0))
	(isS_0 (S_0 x_5))))
(assert (forall ((x_6 Nat_0))
	(diseqNat_0 Z_1 (S_0 x_6))))
(assert (forall ((x_7 Nat_0))
	(diseqNat_0 (S_0 x_7) Z_1)))
(assert (forall ((x_8 Nat_0) (x_9 Nat_0))
	(=> (diseqNat_0 x_8 x_9)
	    (diseqNat_0 (S_0 x_8) (S_0 x_9)))))
(declare-fun add_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun minus_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun le_0 (Nat_0 Nat_0) Bool)
(declare-fun ge_0 (Nat_0 Nat_0) Bool)
(declare-fun lt_0 (Nat_0 Nat_0) Bool)
(declare-fun gt_0 (Nat_0 Nat_0) Bool)
(declare-fun mult_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun div_0 (Nat_0 Nat_0 Nat_0) Bool)
(declare-fun mod_0 (Nat_0 Nat_0 Nat_0) Bool)
(assert (forall ((y_0 Nat_0))
	(add_0 y_0 Z_1 y_0)))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (add_0 r_0 x_1 y_0)
	    (add_0 (S_0 r_0) (S_0 x_1) y_0))))
(assert (forall ((y_0 Nat_0))
	(minus_0 Z_1 Z_1 y_0)))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (r_0 Nat_0))
	(=> (minus_0 r_0 x_1 y_0)
	    (minus_0 (S_0 r_0) (S_0 x_1) y_0))))
(assert (forall ((y_0 Nat_0))
	(le_0 Z_1 y_0)))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0))
	(=> (le_0 x_1 y_0)
	    (le_0 (S_0 x_1) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(ge_0 y_0 Z_1)))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0))
	(=> (ge_0 x_1 y_0)
	    (ge_0 (S_0 x_1) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(lt_0 Z_1 (S_0 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_1 y_0)
	    (lt_0 (S_0 x_1) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(gt_0 (S_0 y_0) Z_1)))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0))
	(=> (gt_0 x_1 y_0)
	    (gt_0 (S_0 x_1) (S_0 y_0)))))
(assert (forall ((y_0 Nat_0))
	(mult_0 Z_1 Z_1 y_0)))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (mult_0 r_0 x_1 y_0)
			(add_0 z_0 r_0 y_0))
		(mult_0 z_0 (S_0 x_1) y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_1 y_0)
	    (div_0 Z_1 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (ge_0 x_1 y_0)
			(minus_0 z_0 x_1 y_0)
			(div_0 r_0 z_0 y_0))
		(div_0 (S_0 r_0) x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0))
	(=> (lt_0 x_1 y_0)
	    (mod_0 x_1 x_1 y_0))))
(assert (forall ((x_1 Nat_0) (y_0 Nat_0) (r_0 Nat_0) (z_0 Nat_0))
	(=>	(and (ge_0 x_1 y_0)
			(minus_0 z_0 x_1 y_0)
			(mod_0 r_0 z_0 y_0))
		(mod_0 r_0 x_1 y_0))))
(declare-datatypes ((C_0 0)) (((Z_0 ))))
(declare-fun diseqC_0 (C_0 C_0) Bool)
(declare-fun isZ_1 (C_0) Bool)
(assert (isZ_1 Z_0))
(assert (forall ((x_0 C_0))
	(=> (diseqC_0 x_0 Z_0)
	    false)))
(check-sat)