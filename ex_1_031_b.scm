(define (product term a next b)
  (define (recursive a)
    (if (> a b)
        1
        (* a (recursive (next a))))
  )
  (recursive a)
)

(define (next_prod a)
  (+ a 1)
)

(define (mult a b)
  (* a b)
)

(define (factorial n)
  (product mult 1 next_prod n)
)



(define (next_for_pi a)
  (+ a 2)
)

(define (pi_4)
  (/
   (*
    (product mult 2 next_for_pi 100)
    (product mult 4 next_for_pi 99)
   )
   (*
    (product mult 3 next_for_pi 100)
    (product mult 3 next_for_pi 100)
   )
   1.
  )
 
)

(pi_4)
(factorial 5)