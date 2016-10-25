(define (accumulate term op nullValue a next b)
    (if (< b a) nullValue
      (op (term b)(accumulate term op nullValue a next (next b)))))
      
      
(define (next x) (- x 1))
(define (cube x)(* x x x))

(define (funcSum cube b)
  (accumulate cube + 0 0 next b))