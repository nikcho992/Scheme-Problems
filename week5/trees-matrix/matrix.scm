(define matrix `( (1 2 3) (4 5 6) (7 8 9)))

(define (list-ref matrix n)
  (cond ( (> n (- (length matrix) 1)) (display "Index out of range"))
	( (= n 0) (car matrix))
	(else (list-ref (cdr matrix) (- n 1)))))
	
(define get-nth-row list-ref) 

(define (get-nth-col matrix n)
    (map (lambda (row) (list-ref row n)) matrix))
    
(define (primary-diagonal matrix)
  
  (define (helper matrix i)
      (if (= i (length matrix))
	`()
	  (cons (list-ref (get-nth-row matrix i) i)
		(helper matrix (+ i 1)))))
    
    (helper matrix 0))