(define (product num counter)
	(if (= num 0) counter
	  (product (quotient num 10) (* counter (remainder num 10)))))