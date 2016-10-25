(define (accumulate term op nullValue a next b)
    (if (= b 0) nullValue
      (op (term a)(accumulate term op nullValue a next (next b)))))
      
(define (id x) x)
(define (next x) (- x 1))
(define (power a b)
  (accumulate id * 1 a next b))