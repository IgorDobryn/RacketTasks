(require rackunit)

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))

  (iter a 0))

(define (inc x)
  (+ x 1))

(define (square x)
  (* x x))


(check-equal? (sum square 1 inc 5) 55)
