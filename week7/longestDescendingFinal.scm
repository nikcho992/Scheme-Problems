
(define (descending-prefix lst)
    (if (null? (cdr lst)) 
        '()
	(if (> (car lst) (cadr lst))
	    (cons (car lst) (descending-prefix (cdr lst)))
	    (cons (car lst) '() ))))

(define (longestDescendingHelp lst)
  (if (null? lst)
    `()
    (cons (descending-prefix lst) (longestDescendingHelp (cdr lst)))))

(define (longestLength lst x)
    (cond ((null? (cdr lst)) x)
          ((< x (length (car lst))) (longestLength (cdr lst) (length (car lst))))
	  (else (longestLength (cdr lst) x))))

(define (longestList lst)
    (define x (longestLength lst 0))
       (if (null? lst) 
           '()
	    (if(= x (length (car lst)))
                (car lst)
		(longestList (cdr lst)))))

(define (longestDescending lst)
    (longestList (longestDescendingHelp lst)))
