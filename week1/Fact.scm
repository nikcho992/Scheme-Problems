(define (fact n)
	  (if(or(= n 1)(= n 0))
	  1
	  (* n(fact(- n 1)))))