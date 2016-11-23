(define (descending-prefix lst)
  (if (null? (cdr lst)) 
      '()
      (if (> (car lst) (cadr lst))
	(cons (car lst) (descending-prefix (cdr lst)))
	(cons (car lst) '()))))
	  
(define (longestDescending lst)
  (if (null? lst)
    `()
    (cons (descending-prefix lst) (longestDescending (cdr lst)))))
  