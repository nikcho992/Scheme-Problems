(define (makeRat num denom)
  (cons num denom))
  
(define (getNum num)
  (car rat))
  
(define (getDenom denom)
  (cdr rat))
  
(define (multRat rat1 rat2)
(cons (* (car rat1) (car rat2)) (* (cdr rat1) (cdr rat2))))


(define (len koko)
  (if (null? koko) 0
    (+ (len (cdr koko)) 1)))
  
  
  
(define (isMem koko x)
      (if (null? koko) 0
	  (if (= (car koko) x) 1
	    (isMem (cdr koko) x))))


(define (toNum koko)
  (if (null? koko)
      0
      ( + (* (expt 10 (- (length koko) 1)) (car koko)) (toNum (cdr koko)))))
