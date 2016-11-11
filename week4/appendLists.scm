(define (append-lists xs ys)
  (if (null? xs)
    ys
    (cons (car xs) (append-lists (cdr xs) ys))))