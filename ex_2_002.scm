(define (start-segment begin-point) (car begin-point))
(define (end-segment end-point) (cdr end-point))

(define (make-segment begin-point end-point) 
  (cons begin-point end-point) 
  )

(define (mid-point segment)
  (make-point (/ (+ (x-point (start-segment segment)) 
                    (x-point (end-segment segment))
                    )
                 2
                 )
              (/ (+ (y-point (start-segment segment)) 
                    (y-point (end-segment segment))
                    )
                 2
                 )     
              )  
  )

(define (x-point x) (car x))
(define (y-point y) (cdr y))

(define (make-point x y) (cons x y))

(define (print-point x)
  (newline)
  (display "(")
  (display (x-point x))
  (display "; ")
  (display (y-point x))
  (display ")")    
  )

(define p1 (make-point 0 2))
(define p2 (make-point 10 20))

(define s (make-segment p1 p2))

(print-point (mid-point s))




