(define (transpose matrix)
  (if (null? (car matrix))
    `()
    (cons (map car matrix)
	  (transpose (map cdr matrix)))))