(define (double proc)
  (lambda (x) 
    (proc (proc x))  
    )
  )
(define (inc x)
  (+ x 1)
  )

((double inc) 0)

(((double (double double)) inc) 5);21
