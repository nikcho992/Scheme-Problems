;task 4 funckiq koqto namira nizhodqshto sortira podspisuk na psisuk smakismalna duljina
;purvo pravim funckiq koqto namira nai dulgiq nizhodqshno sortiran prefiks na daden spisuk
(define (descending-prefix lst)
    (if (null? (cdr lst)) 
        '()
	(if (> (car lst) (cadr lst))
	    (cons (car lst) (descending-prefix (cdr lst)))
	    (cons (car lst) '() ))))
;sega pravim funckiq koqt ni vrushta vischki podmnojestva koito namalqvat  
(define (longestDescendingHelp lst)
  (if (null? lst)
    `()
    (cons (descending-prefix lst) (longestDescendingHelp (cdr lst)))))
;tova ni vrushta duljinata na nai dulgiq element na spisuk
(define (longestLength lst x)
    (cond ((null? (cdr lst)) x)
          ((< x (length (car lst))) (longestLength (cdr lst) (length (car lst))))
	  (else (longestLength (cdr lst) x))))
;tova ni vrushta elementa na pisuk s nai golqma duljina
(define (longestList lst)
    (define x (longestLength lst 0))
       (if (null? lst) 
           '()
	    (if(= x (length (car lst)))
                (car lst)
		(longestList (cdr lst)))))
;i tova e samata zadacha
(define (longestDescending lst)
    (longestList (longestDescendingHelp lst)))