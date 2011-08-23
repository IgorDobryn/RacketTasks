(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
   3))

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (cube-root x)
  (sqrt-iter 1.0 x))

(cube-root 27)
