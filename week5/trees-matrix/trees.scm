(define (makeTree root left right)
  (list root left right))

(define (root tree)
  (car tree))

(define (left-subtree tree)
  (cadr tree))
  
(define (right-subtree tree)
  (caddr tree))

(define (empty? tree)
  (null? tree))
  
(define (isMember? data tree)
  (cond ( (empty? tree) #f)
	( (= data (root tree))#t)
	( else
	    (or 
		(isMember? data (left-subtree tree))
		(isMember? data (right-subtree tree))))))
		
(define (isLeaf? tree)
  (and (not (empty? tree))
       (and 
	    (empty? (left-subtree tree))
	    (empty? (right-subtree tree)))))
	    
(define (memberLeaf? tree x)
  (if (empty? tree) #f
    (if (and
	    (isLeaf? tree)
	    (= x (root tree))) #t
    
      (or (memberLeaf? (left-subtree tree) x)
	  (memberLeaf? (right-subtree tree) x)))))
	    