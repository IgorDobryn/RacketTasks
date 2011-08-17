(define (square x)
  (* x x)
  
  (define (exponent b n)
    (exp-iter b n 1)
    )
  
  (define (exp-iter b n a)
    (cond ((= n 1) (* b a))
          ((even? n) (exp-iter 
                      (square b) 
                      (/ n 2) 
                      a)
                     )
          (else (
                 exp-iter b 
                          (- n 1) 
                          (* a b)
                          )
                )
          )
    )
  
  (exponent 3 10000)
