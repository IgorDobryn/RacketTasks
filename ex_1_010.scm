(require rackunit)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n)); вычисляет 2*n
(define (g n) (A 1 n)); вычисляет 2^n
(define (h n) (A 2 n)); вычисляет 2^(2^n)


(check-equal? (f 2) 4)
(check-equal? (f 10) 20)

(check-equal? (g 2) 4)
(check-equal? (g 10) 1024)

(check-equal? (h 1) 2)
(check-equal? (h 2) 4)
(check-equal? (h 3) 16)
(check-equal? (h 4) 65536)
