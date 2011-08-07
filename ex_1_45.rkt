(define tolerance 0.00001)

(define (repeated function n) 
  (define (repeated_iterative f n)
    (if (= n 1)
        (lambda (x) (f x)) 
        (repeated_iterative (lambda (x) ( function (f x))) 
                  (- n 1)      
        )
    )  
  )
  
  (repeated_iterative function n)  
)


(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance)
  )
  (define (try guess)
      (let ((next (f guess)))
        (if (close-enough? guess next)
            next
            (try next)
        )
      )
  )
  (try first-guess)
)

(define (average-damp f)
  (lambda (x) (/ (+ x (f x))
                 2
              ))
)

(define (n-root x n)
  (fixed-point (repeated (average-damp (lambda (y) 
                                               (/ x 
                                                  (expt y (- n 1))
                                               )
                                       )
                         )
                         (+ (quotient n 4) 1)
                )                 
                1.0)
)


(n-root 100 10)

