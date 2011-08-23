(define (accumulate combiner null-value term a next b)
  
  (define (iterative a result)
    (if (> a b)
        result 
        (iterative 
         (next a)
         (combiner a result)
         )
        )
    )
  (iterative a null-value)
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