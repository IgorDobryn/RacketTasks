(require rackunit)

(define (expmod base exp m)
  (cond ((= exp 0) 1)
  ((even? exp)
    (remainder (square (expmod base (/ exp 2) m))
               m))
  (else
    (remainder (* base (expmod base (- exp 1) m))
               m))))

(define (square x)
  (* x x))




(define (carmichael-number-test n)
 (display "Test for ")
 (display n)
 (newline)
 (define (carmichael-number-test-iter a)
    (cond ((= (expmod a n n) a)
           (display "\t is not accepted"))
          ((> a 1)
           (carmichael-number-test-iter (- a 1)))))

  (carmichael-number-test-iter n)
  (newline))


(check-equal? (expmod 28 27 27) 1)
(check-equal? (expmod 10 3 5) 0)


(carmichael-number-test 561)
(carmichael-number-test 1105)
(carmichael-number-test 1729)
(carmichael-number-test 2465)
(carmichael-number-test 2821)
(carmichael-number-test 6601)
