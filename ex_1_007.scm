(require rackunit)

(define tolerance 0.00000001)

(define (sqrt-iter guess x)
  (define (improve-iter prev-guess cur-guess)
    (if (good-enough? prev-guess cur-guess)
        cur-guess
        (improve-iter cur-guess
                 (improve-guess cur-guess x))))
  (improve-iter guess (improve-guess guess x)))

(define (improve-guess prev-guess cur-guess)
  (average prev-guess (/ cur-guess prev-guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x);в данной случае мы ориентируемся на величину изменения приближения. Это дает лучший результет,при больших числах, чем если бы мы возводили приближение в квадрат и сравнивали с исходным числом
  (< (abs (/ (- guess x) guess)) tolerance))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(check-= (sqrt 10000000000000000) 100000000 tolerance)
(check-= (sqrt 0.0001) 0.01 tolerance)
(check-= (sqrt 10000) 100 tolerance)
