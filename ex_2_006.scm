(define zero 
  (lambda (f) 
    (lambda (x) x)
    )
  )

(define one 
  (lambda (f) 
    (lambda (x) (+ x 1))
    )
  )

(define two 
  (lambda (f) 
    (lambda (x) (+ x 2))
    )
  )


(define (add-1 n)
  (lambda (f) 
    (lambda (x) 
      (f ((n f) x)                  
         )
      )
    )
  )

(define (inc x) (+ x 1))

((zero cos) 4)


(((add-1 zero) inc) 10)

