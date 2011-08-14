(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))

(define (make-interval a b) 
  (cons a b)
)


(define (mul-interval x y)
  (let ((x1 (lower-bound x))
        (x2 (lower-bound y))
        (y1 (upper-bound x))
        (y2 (upper-bound y)))
    
    (cond ((and  (<= x1 0) (<= x2 0)
                (or (and (> y1 0) (< y2 0))
                    (and (< y1 0) (> y2 0))
                    (and (< y1 0) (< y2 0))))
           (make-interval (* y1 y2) (* x1 x2)))
           
           ((and  (> y1 0) (> y2 0)
                (or (and (<= x1 0) (>= x2 0))
                    (and (>= x1 0) (<= x2 0))
                    (and (>= x1 0) (>= x2 0))))
           (make-interval (* x1 x2) (* y1 y2)))
    )
    (make-interval (min (* x1 x2) (* x1 y1) (* x1 y2) (* y1 y2))
                   (max (* x1 x2) (* x1 y1) (* x1 y2) (* y1 y2))
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

(define R1    (make-interval 1  10))
(define R2    (make-interval -4 12))
(define R1*R2 (mul-interval R1 R2))

(newline)
(display "Intervals")
(newline)
(print-interval R1)
(print-interval R2)
(print-interval R1*R2)

