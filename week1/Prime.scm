(define (prime n d)
	(if (< n 2) 1
	  (if (= d 1) 1
	      (if(= (remainder n d) 0) 0
		(prime n (- d 1))))))