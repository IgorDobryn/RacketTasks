

(define (integral f a b n)
  
  (/ 
    (*
      (h_f b a n)
      (+
        (y a 0 (h_f b a n)) 
        (integral-iter 
                     0 
                     (h_f b a n)
                     1
                     a
                     n
                     )
        (y a n (h_f b a n))
      )
    )
    3
  )
)

(define (y a k h) 
  (+ a (* k h))
)

(define (h_f b a n)
  (/ (- b a) n)
)

(define (integral-iter res h k a n)
  (if(< k n)
     (integral-iter 
      (+ res (y a k h) (y a (+ k 1) h))
      h
      (+ k 2)
      a
      n
     )
     res
  )
)

(define (cube x)
  (* x x x)
)

(integral cube 0 1 1000)