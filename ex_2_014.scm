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

(define (make-center-width c w)
  (make-interval (- c w) (+ c w))
  )

(define (make-center-percent c w)
  (make-center-width c (/ (* c w) 100.) )
  )

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2)
  )

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2)
  )

(define (percent i)
  (* (/ (width i) (center i)) 100)
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

(define  (add-interval x y)
  (make-interval  (+ (lower-bound x) (lower-bound y))
                  (+ (upper-bound x) (upper-bound y))
                  )
  )

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y))
                               )
                )
  )

(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)
                )
  )

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
                  (add-interval (div-interval one r1)
                                (div-interval one r2)))
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

(define R1    (make-center-percent 5 5))
(define R2    (make-center-percent 10 7))
(define P1    (div-interval R1 R1))
(define P2    (div-interval R1 R2))

(print-interval R1)
(print-interval R2)

(print-interval P1)
(print-interval P2)


