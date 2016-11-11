(define (listToString koko)
  (if (null? koko)
    " "
      (string-append 
	(string-append (car koko) " ")
	  (listToString (cdr koko)))))