(define (accumulate op null-value term a next b)
    (if (> a b)
        null-value
        (op (term a) (accumulate op null-value term (next a) next b))))

(define (weird-mul x p)
    (define (next a)
        (+ a 1))
	
    (define (fact n)
      (if(or(= n 1)(= n 0))
	  1
	  (* n(fact(- n 1)))))

    (define (inner-sum k)
        (define (term k)
            (* (expt (- 0 1) k)
               (/ (expt x (* k 2))
                  (fact (* 2 k))))) ; (-1)^k * (x^2k / (2k)!)

        (accumulate + 0 term 1 next k))

    (accumulate * 1 inner-sum 1 next p))