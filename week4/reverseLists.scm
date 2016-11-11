(define (reverse-list koko)
  (if (null? koko)
    `()
    (append (reverse-list (cdr koko)) (list (car koko)))))