(define dx  0.000001)


(define (n-fold-smooth func n)
  (define (repeated function n)
    (define (repeated_iterative f n)
      (if (= n 1)
          (lambda (x) (f x))
          (repeated_iterative (lambda (x) ( function (f x)))
                              (- n 1))))

    (repeated_iterative function n))

  (define (smooth f)
    (lambda (x)
      (/  (+  (f (- x dx))
              (f x)
              (f (+ x dx)))
          3)))

  (repeated (smooth func) n))


(define (square x)
  (* x x))

((n-fold-smooth square 20) 1)
