(define (accumulate term op nullValue a next b)
    (if (<= a b) nullValue
      (op (term a)(accumulate term op nullValue (next a) next b))))
      
(define (id x) x)
(define (next x) (- x 1))
(define (fact a b)
  (accumulate id * 1 a next b))
  
  
;(define (factLam (lambda a b) (accumulate (lambda (x) (x)) + 1 a (lambda (x)(- x 1)) b)))

