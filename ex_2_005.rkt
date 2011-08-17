(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)
     )
  )

(define (cons-part n b)
  (define (iterative n)
    (if (= (remainder n b) 0)
        (iterative (remainder n b))
        n        
        )
    )
  (iterative n)
  )

(define (part-power n b)
  (define (iterative n res)
    (if (= n 1)
        res
        (iterative (/ n b) (+ res 1))        
        )
    )
  (iterative n 0)
  )



(define (car z)
  (part-power (cons-part z 3) 3)
  )

(define (cdr z)
  (part-power (cons-part z 2) 2)
  )
