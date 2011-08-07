(define (numer x) (car x))
(define (denom x) (cdr x))

(define (make-rat n d) 
  (if (< d 0) 
        (make-rat (* n -1)
                  (* d -1)
        )
        
        (let ((g (gcd n d)))
          (cons (/ n g) 
                (/ d g)
          )  
        )
  )
)

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))
  )
)

(define (print-rat x)
  (newline)
  (display (numer x))
  (newline)
  (display (denom x))  
)

(define x1 (make-rat 1 8))
(define x2 (make-rat 1 3))

(print-rat (mul-rat x1 x2))
