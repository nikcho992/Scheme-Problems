(define (any? pred? koko)
  (cond ( (null? koko) #f)
	( (pred? (car koko)) #t)
	( else (any? pred? (cdr koko)))))