(define (take-while pred? koko)
  ( if (or (null? koko) (not ( pred? (car koko))))
    `()
      (cons (car koko) (take-while pred? (cdr koko)))))