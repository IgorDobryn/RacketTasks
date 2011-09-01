(require rackunit)

(define tolerance 0.00000001)

(define (sqrt-iter guess x)
 (define (improve-iter prev-guess cur-guess)
    (if (good-enough? prev-guess cur-guess)
        cur-guess
        (improve-iter cur-guess
                 (improve-guess cur-guess x))))
  (improve-iter guess (improve-guess guess x)))

(define (improve-guess guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
   3))

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (cube-root x)
  (sqrt-iter 1.0 x))

(check-= (cube-root 27) 3 tolerance)
(check-= (cube-root 970299) 99 tolerance)
(check-= (cube-root -148877) -53 tolerance)
