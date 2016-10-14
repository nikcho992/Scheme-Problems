(define (numEven num counter)
	(if (= num 0) counter
	    (if (= (remainder (remainder num 10) 2) 0) (numEven (quotient num 10) (+ counter 1))
	      (numEven (quotient num 10) counter))))