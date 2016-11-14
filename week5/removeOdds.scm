(define (remove-odd koko)
  (let ((even-numbers (filter even? koko))
	(odd-numbers (filter odd? koko)))
       
  (cond ( (null? koko) `())
	( (= (length even-numbers) 1) (car even-numbers))
	( else (car odd-numbers)))))