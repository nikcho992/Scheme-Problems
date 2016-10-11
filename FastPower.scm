(define (fast n k)
	  (if (= k 0) 1
	  (if (even? k)
	      (fast(* n n)(quotient k 2)
	      (fast ( n (- k 1))))))