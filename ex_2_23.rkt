(define (for-each f items)
  (cond ((null? (cdr items))
        (newline))
        (else
          (f (car items))
          (for-each f (cdr items))
        )
  )
)


(for-each 
  (lambda (x) 
      (newline) 
      (display x)
  ) 
  
  (list 1 2 3 4)
)
