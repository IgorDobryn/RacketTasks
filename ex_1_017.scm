(require rackunit)

(define (double a)
  (arithmetic-shift a 1))

(define (halve a)
  (arithmetic-shift a (- 1)))

(define (square a)
  (* a a))

(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (fast-expt b n)
  (cond ((= n 0) 1)
  ((even? n) (square (fast-expt b (/ n 2))))
  (else (* b (fast-expt b (- n 1))))))


(check-equal? (fast-expt 5 4) 625)
(check-equal? (fast-expt 3 3) 27)
