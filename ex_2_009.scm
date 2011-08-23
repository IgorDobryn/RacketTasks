(define tolerance 0.0001)


;aproximately equal numbers
(define (== a b)
  (< (abs (- a b))
     tolerance
     )
  )

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

(define (sub-interval x y)
  (make-interval 
   (- (lower-bound x) (lower-bound y)  )
   (- (upper-bound x) (upper-bound y)  )    
   )
  )

(define (interval-width x)
  (/ (- (upper-bound x) 
        (lower-bound x)
        )
     2
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

(define R1    (make-interval 6.12 7.48))
(define R2    (make-interval 2.58 2.97))
(define R1-R2 (sub-interval R1 R2))
(define R1+R2 (add-interval R1 R2))
(define R1*R2 (mul-interval R1 R2))
(define R1/R2 (div-interval R1 R2))

(newline)
(display "Intervals")
(newline)
(print-interval R1)
(print-interval R2)
(print-interval R1-R2)
(print-interval R1+R2)
(print-interval R1*R2)
(print-interval R1/R2)

(newline)
(display "Interval widths")
(newline)
(interval-width  R1)
(interval-width  R2)
(interval-width R1-R2)
(interval-width R1+R2)
(interval-width R1*R2)
(interval-width R1/R2)

(newline)
(display "IW R1 - IW R2 = IW R1-R2: ")
(newline)
(== (interval-width R1-R2)
    (- (interval-width  R1)
       (interval-width  R2)
       ) 
    )

(newline)
(display "IW R1 + IW R2 = IW R1+R2: ")
(== (interval-width R1+R2)
    (+ (interval-width  R1)
       (interval-width  R2)
       ) 
    )

(newline)
(display "IW R1 * IW R2 = IW R1*R2: ")
(== (interval-width R1*R2)
    (* (interval-width  R1)
       (interval-width  R2)
       ) 
    )

(newline)
(display "IW R1 / IW R2 = IW R1/R2: ")
(== (interval-width R1/R2)
    (/ (interval-width  R1)
       (interval-width  R2)
       ) 
    )



