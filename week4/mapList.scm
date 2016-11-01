(define (map f koko)
  (if (null? koko)
    `()
    (cons (f (car koko)) (map f (cdr koko)))))