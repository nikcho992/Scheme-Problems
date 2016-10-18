(define (toBinary num)
      (if (= num 0) 0
	(+ (* 10 (toBinary (quotient num 2))) (remainder num 2))))

