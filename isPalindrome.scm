(define (reverse num digit rev)
	(if (= num 0) (+ (* rev 10) digit)
	  (reverse (quotient num 10) (remainder num 10) (+ (* rev 10) digit) )))

(define (isPalindrome num )
	(if (= (reverse num 0 0) num) 1
	0))
	