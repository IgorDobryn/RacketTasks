(define (accumulate combiner null-value term a next b)
 
  (define (recursive a)
    (if (> a b)
        null-value 
        (combiner 
                  a 
                  (recursive (next a))
        )
    )
  )
  (recursive a)
)

(define (increment a)
  (+ a 1)
)



(define (comb_prod a b)
  (* a b)
)

(define (comb_sum a b)
  (+ a b)
)

(define (factorial n)
  (accumulate comb_prod 1 comb_prod 1 increment n)
)

(factorial 5);120

(define (sum n)
  (accumulate comb_sum 0 comb_sum 1 increment n)
)

(sum 5);15