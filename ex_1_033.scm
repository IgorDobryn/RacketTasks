(define (accumulate combiner null-value term a next b filter)
  (define (iterative a result)
    (if (filter a b)
        result
        (iterative
         (next a)
         (combiner a result))))
  (iterative a null-value))

(define (increment a)
  (+ a 1))

(define (b-l-filter a b)
  (> a b))

(define (prod-func a b)
  (* a b))

(define (comb-sum a b)
  (+ a b))

(define (comb-sq-sum x storage)
  (+ storage (* x x)))

(define (prime-sq-sum a b)
  (accumulate comb-sq-sum 0 prod-func a next-prime b b-l-filter))

(prime-sq-sum 1 4)
