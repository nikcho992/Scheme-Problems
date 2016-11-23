(define (num-in-list? lst num)
  (if (null? lst) #f
    (if (= (remainder (car lst) num) 0) #t
      (num-in-list? (cdr lst) num))))
  
(define (checkMatrix? matrix num)
    (if (null? matrix) #t
      (if (num-in-list? (car matrix) num) 
	(checkMatrix? (cdr matrix) num)
	#f)))