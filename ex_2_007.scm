(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))

(define (make-interval a b) 
  (cons a b)
  )

(define  (add-interval x y)
  (make-interval  (+ (lower-bound x) (lower-bound y))
                  (+ (upper-bound x) (upper-bound y))
                  )
  )

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4)
                   )
    )
  )

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y))
                               )
                )
  )

(define (print-interval x)
  (newline)
  (display "(")
  (display (lower-bound x))
  (display "; ")
  (display (upper-bound x))
  (display ")")
  
  )

(define R1 (make-interval 6.12 7.48))
(define R2 (make-interval 2.58 2.97))

(print-interval R1)
(print-interval R2)

(print-interval (add-interval R1 R2))
(print-interval (mul-interval R1 R2))
(print-interval (div-interval R1 R2))
