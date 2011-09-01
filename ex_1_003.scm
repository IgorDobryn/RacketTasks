(require rackunit)

(define (square x)
  (* x x))

(define (biggest-num-sum-squares a b c)
  (cond ((and (<= a b) (<= a c))
         (+ (square b) (square c)))
        ((and (< b a) (<= b c))
         (+ (square a) (square c)))
        ((and (< c b) (< c a))
         (+ (square b) (square a)))))


(check-equal? (biggest-num-sum-squares 3 1 0) 10)
(check-equal? (biggest-num-sum-squares 4 1 2) 20)
(check-equal? (biggest-num-sum-squares 1 0 0) 1)
(check-equal? (biggest-num-sum-squares 0 0 0) 0)
