(require rackunit)

(define (square x)
  (* x x))

(define (fib n)
  (define (fib-iter a b p q count)
    (cond ((= count 0) b)
          ((even? count)
            (fib-iter a
                      b
                      (+ (square p) (square q))
                      (+ (square q) (* 2 p q))
                      (/ count 2)))
           (else (fib-iter (+ (* b q) (* a q) (* a p))
                           (+ (* b p) (* a q))
                           p
                           q
                           (- count 1)))))
  (fib-iter 1 0 0 1 n))

(check-equal? (fib 13) 233)
(check-equal? (fib 4) 3)
(check-equal? (fib 7) 13)
