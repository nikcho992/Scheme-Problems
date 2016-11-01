(define (helper koko index counter)
  (if (= counter index) (car koko)
    (helper (cdr koko) index (+ counter 1)))) 

(define (find koko index)
  (helper koko index 0))
  