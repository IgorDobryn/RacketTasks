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




(define (print-interval x)
  (newline)
  (display "(")
  (display (lower-bound x))
  (display "; ")
  (display (upper-bound x))
  (display ")")
  
  )

(define R1    (make-center-percent 8 10))


(newline)
(print-interval R1)
(newline)
(center R1)
(width R1)
(percent R1)


