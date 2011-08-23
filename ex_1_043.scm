(define (repeated function n)
  (define (repeated_iterative f n)
    (if (= n 1)
        (lambda (x) (f x))
        (repeated_iterative (lambda (x) ( function (f x)))
                            (- n 1))))

  (repeated_iterative function n))

(define (inc x)
  (+ x 1))

(define (square x)
  (* x x))

((repeated square 3) 2)
