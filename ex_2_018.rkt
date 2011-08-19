(define (reverse l)
  (define (reverse-items items res)
    (if (null? (cdr items))
      (cons (car items) res)
      (reverse-items (cdr items) (cons (car items) res))))
  (reverse-items l (list)))


(define l (list 1 4 9 16 25 ))

l
(reverse l)

