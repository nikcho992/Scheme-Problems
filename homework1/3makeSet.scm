(define (member? x lst)
  (if (null? lst)
    #f
      ;�������� � ������ �� ������� ������,������ ����� ����� ������ ����������� (= )
      (if (or (and (integer? x) (= x (car lst))) (and (string? x) (string=? x (car lst))))
	#t
	  (member? x (cdr lst)))))

(define (make-set listA)
  (if (null? listA)
    `()
      (if (not (member? (car listA) (cdr listA)))
	(cons (car listA) (make-set (cdr listA)))
	    (make-set (cdr listA)))))