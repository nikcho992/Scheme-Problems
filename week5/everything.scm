(define (all? pred? koko)
  (cond ( (null? koko) #t)
	( (not (pred? (car koko))) #f)
	( else (all? pred? (cdr koko)))))