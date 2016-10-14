(define(power n k)
	(if(= k 0)1
	  (* n(power n(- k 1)))))