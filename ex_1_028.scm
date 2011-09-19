(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (use-trivial-check (expmod base (/ exp 2) m) m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (square x)
  (* x x))

(define (trivial-check e m r)
  (if (and (not (= e 1))
           (not (= e (- m 1)))
           (= r 1))
      0
      r))

(define (use-trivial-check e m)
  (trivial-check e m (remainder (square e) m)))

(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it (+ 1 (random (- n 1)))))


(miller-rabin-test 37)
(miller-rabin-test 561)
(miller-rabin-test 1105)
(miller-rabin-test 1729)
(miller-rabin-test 2465)
(miller-rabin-test 2821)
(miller-rabin-test 6601)
