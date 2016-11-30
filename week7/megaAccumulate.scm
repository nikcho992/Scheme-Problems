(define (accumulate term op nullValue m next n)
  (if (> m n) nullValue
      (op (term m)(accumulate term op nullValue (next m) next n))))
  
(define (next x) (+ x 1))
  
(define (y a m n)
    (define (term n)	
      (/ (accumulate (lambda (x)(+ x a)) * 1 1 next m) (accumulate (lambda (x)(+ x n)) * 1 1 next n)))
  (accumulate term + 0 1 next n))