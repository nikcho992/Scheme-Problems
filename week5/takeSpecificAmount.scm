(define (take koko n)
  (if (or (= n 0) (null? koko)) `()
    (cons (car koko) (take (cdr koko) (- n 1)))))