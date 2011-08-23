(define (accumulate combiner null-value term a next b filter)
  
  (define (iterative a result)
    (if (filter a b)
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



(define (b_l_filter a b)
  (> a b)  
  )

(define (prod_func a b)
  (* a b)
  )

(define (comb_sum a b)
  (+ a b)
  )

(define (comb_sq_sum x storage)
  (+ storage (* x x))
  )

(define (prime_sq_sum a b)
  (accumulate comb_sq_sum 0 prod_func a next_prime b b_l_filter)
  )

(prime_sq_sum 1 4)