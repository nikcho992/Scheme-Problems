(define (list-rem index xs)
  (if (null? xs)
    `()
      (if (> index (length xs))
	xs
	(if (= index 0) 
	  (cdr xs)
	    (cons (car xs)(list-rem (- index 1) (cdr xs)))))))