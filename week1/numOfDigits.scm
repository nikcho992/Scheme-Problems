(define (numDigits num count)
	(if (= num 0) count
	       ;(+ count 1)
		  (numDigits (quotient num 10)(+ count 1))))