(define tolerance 0.00001)

(define (iterative-improove improove good-enough?)
  (define (iterative f x)
    (if (good-enough? x (improove f x))
        x
        (iterative f (improove f x))))

  (lambda (f x) (iterative f x)))

(define (fixed-point-good-enough? guess x)
  (< (abs (- guess x)) tolerance))

(define (fixed-point-improover f x)
  (f x))

(define (func x)
  (+ 1
     (/ 1 x)))

((iterative-improove fixed-point-improover fixed-point-good-enough?) func 1.0)
