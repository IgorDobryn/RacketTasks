(require rackunit)

(define (double a)
  (arithmetic-shift a 1))

(define (halve a)
  (arithmetic-shift a (- 1)))

(define (* a b)
    (cond ((= b 0) 0)
          ((even? b) (double (* a (halve b))))
          (else (+ a (* a (- b 1))))))

(check-equal? (* 5 4) 20)
(check-equal? (* 3 3) 9)
(check-equal? (* 10 27) 270)

