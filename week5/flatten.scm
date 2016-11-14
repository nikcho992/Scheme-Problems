(define (flatten koko)
  (cond ( (null? koko) `() )
	( (list? (car koko)) (append (flatten (car koko)) (flatten (cdr koko))))
	( else (append (list (car koko)) (flatten (cdr koko))))))