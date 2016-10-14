(define (sum start end counter)
	(if (= start end) (+ counter end)
	  (sum (+ start 1) end (+ counter start))))