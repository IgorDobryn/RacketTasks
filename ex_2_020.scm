(define (same-partity x . args)
  
  (define (iter items res)
    (cond ((null? items) 
           res
           )          
          ((= (remainder x 2) 
              (remainder (car items) 2)
              )
           (iter (cdr items) 
                 (append res (list (car items)))
                 )  
           )         
          (else (iter (cdr items) res))
          )
    )
  
  (if (null? args)
      (list x)
      (iter args (list x))
      )
  )

(same-partity 1 2 3 4 5 6 7)
(same-partity 2 3 4 5 6 7)
