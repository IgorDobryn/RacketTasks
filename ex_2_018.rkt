(define (reverse l)  
  (define (reverse-items items res)
    (if (null? (cdr items))
        (list (car items))
        (append res (reverse-items (cdr items) res) (list (car items)))
        )
    )  
  
  (reverse-items l (list))
  )


(define l (list 1 4 9 16 25 ))

l
(reverse l)
