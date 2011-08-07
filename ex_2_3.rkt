(define (rectangle-width rect)
  (define (X1) (car(car (car rect))))
  (define (X2) (car(cdr (car rect))))
  (define (Y1) (cdr(car (car rect))))
  (define (Y2) (cdr(cdr (car rect))))

  (sqrt (+ (* (- (X2) (X1)) (- (X2) (X1))) 
           (* (- (Y2) (Y1)) (- (Y2) (Y1))) 
        )
  )
)

(define (rectangle-height rect)
  (define (X1) (car(car (cdr rect))))
  (define (X2) (car(cdr (cdr rect))))
  (define (Y1) (cdr(car (cdr rect))))
  (define (Y2) (cdr(cdr (cdr rect))))

  (sqrt (+ (* (- (X2) (X1)) (- (X2) (X1))) 
           (* (- (Y2) (Y1)) (- (Y2) (Y1))) 
        )
  )
)

(define (rectangle-perimeter rect)
  (*  2
      (+ (rectangle-height rect)
         (rectangle-width rect)
      )
  )
)

(define (rectangle-square rect)
  (* (rectangle-height rect)
     (rectangle-width rect)
  ) 
)


(define (make-rectangle-from-sides side1 side2)
  (cons side1 side2)  
)

(define (make-rectangle-from-points left-top right-bottom)
  (define left-bottom
    (make-point (car left-top)
                (cdr right-bottom)                        
    )       
  )

  
  (make-rectangle-from-sides
        (make-segment left-bottom 
                      left-top) 
        (make-segment left-bottom 
                      right-bottom)        
  )
)


(define (start-segment begin-point) (car begin-point))
(define (end-segment end-point) (cdr end-point))

(define (make-segment begin-point end-point) 
  (cons begin-point end-point) 
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



(define p1 (make-point 0  0))
(define p2 (make-point 0  10))
(define p3 (make-point 10 10))
(define p4 (make-point 10 0))

(define s1 (make-segment p1 p2))
(define s2 (make-segment p1 p4))

(define rect1 (make-rectangle-from-sides  s1 s2))
(define rect2 (make-rectangle-from-points p2 p4))

(rectangle-perimeter rect1)
(rectangle-square rect1)

(rectangle-perimeter rect2)
(rectangle-square rect2)


