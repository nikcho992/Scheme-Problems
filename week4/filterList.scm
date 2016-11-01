(define (isEven? x)
  (if (= (remainder x 2) 0) #t
    #f))
(define (isList? x)
  (if (pair? x) #t
    #f))
(define (isInteger? x)
  (if (integer? x) #t
    #f))

(define (filter pred? koko)
  (if (null? koko)
    `()
    (if (pred? (car koko))
      (cons (car koko)(filter pred? (cdr koko)))
      (filter pred? (cdr koko)))))