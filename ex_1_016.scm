(require rackunit)

(define (square x)
  (* x x))

(define (exponent b n)
  (define (exp-iter b n a)
    (cond ((= n 0) a)
          ((even? n) (exp-iter (square b)
                               (/ n 2)
                               a))
          (else (exp-iter b
                          (- n 1)
                          (* a b)))))
  (if (< n 0)
    (/ 1
      (exp-iter b (- n) 1))
    (exp-iter b n 1)))

(check-equal? (exponent 3 4) 81)
(check-equal? (exponent 3 3) 27)
(check-equal? (exponent 3 -1) 1/3)
