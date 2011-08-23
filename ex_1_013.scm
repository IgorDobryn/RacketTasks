(define f  
  (/
   (+ 
    1 
    (sqrt 5)
    )
   2
   )
  )

(define w  
  (/
   (- 
    1 
    (sqrt 5)
    )
   2
   )
  )

(define (fib1 n)
  (/
   (-
    (expt f n)
    (expt w n)    
    )
   (sqrt 5)
   )
  )

(define (fib n)
  (fib-iter 1 0 n)
  )

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) 
                a 
                (- count 1)
                )
      )
  )
(fib 20)
(fib1 20)
