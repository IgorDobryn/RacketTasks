(define tolerance 0.00001)

(define (iterative-improove improove good-enough?)

  (define (iterative guess x)
    (if (good-enough? guess (improove guess x))
      guess
      (iterative (improove guess x) x)
    )
  )

  (lambda (x) (iterative 1.0 x))
)

(define (sqrt-improover guess x)
   (average guess
            (/ x guess)
   )
)

(define (sqrt-good-enough? guess x)
  (< (abs (- guess x)) tolerance)
)

(define (average x y)
  (/ (+ x y) 2)
)


(define (_sqrt x)
  ((iterative-improove sqrt-improover sqrt-good-enough?) x)
)

(_sqrt 100)

