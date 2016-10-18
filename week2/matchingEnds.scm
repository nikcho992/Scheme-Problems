(define (lengthNumberHelper num count)
	(if (= num 0) count
		  (lengthNumberHelper (quotient num 10)(+ count 1))))
		  
(define (lengthNumber num)
	(lengthNumberHelper num 0))
		  
(define (degree num deg)
	(expt num deg))
	
(define (equalEnds num end)
	(if (= (remainder num (degree 10 (lengthNumber end))) end) 1
	  0))
	