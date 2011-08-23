(define  tolerance 0.00001)

(define (fixed_point f first_guess)
  (define (close_enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close_enough? guess next)
          next
          (try next))))
  (try first_guess))

(define (func x)
  (/ (log 1000)
     (log x)))

(fixed_point func 133.0);4.555533033617624
