(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* a result))))
  (iter a 1))

(define (next-prod a)
  (+ a 1))

(define (mult a b)
  (* a b))

(define (factorial n)
  (product mult 1 next-prod n))

(define (next-for-pi a)
  (+ a 2))

(define (pi-4)
  (/ (* (product mult 2 next-for-pi 100)
        (product mult 4 next-for-pi 99))
     (* (product mult 3 next-for-pi 100)
        (product mult 3 next-for-pi 100))
      1.))

(pi-4)
(factorial 5)
