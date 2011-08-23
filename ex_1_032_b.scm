(define (accumulate combiner null-value term a next b)
  (define (iterative a result)
    (if (> a b)
        result
        (iterative
         (next a)
         (combiner a result))))
  (iterative a null-value))

(define (increment a)
  (+ a 1))

(define (comb-prod a b)
  (* a b))

(define (comb-sum a b)
  (+ a b))

(define (factorial n)
  (accumulate comb-prod 1 comb-prod 1 increment n))

(factorial 5);120

(define (sum n)
  (accumulate comb-sum 0 comb-sum 1 increment n))

(sum 5);15
