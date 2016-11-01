(define (allInts? koko)
  (if (null? koko) #t
    (if(not (integer? (car koko))) #f
      (allInts? (cdr koko)))))