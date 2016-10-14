(define (numOdd num counter)
	(if (= num 0) counter
	    (if (not (= (remainder (remainder num 10) 2) 0)) (numOdd (quotient num 10) (+ counter 1))
	      (numOdd (quotient num 10) counter))))