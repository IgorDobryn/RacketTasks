(define (sqrt-iter guess x)
  
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x
                 )
      )
  )


(define (improve guess x)
  (average guess (/ x guess)
           )
  )

(define (average x y)
  (/ (+ x y) 2) 
  )

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001)
  )


(define (_sqrt x)
  (sqrt-iter 1.0 x)
  )



(_sqrt 0.0001)
