;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (sqrt-iter guess x)
  
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x
                 )
      )
  )


(define (improve guess x)
  (/
   (+
    (/
     x
     (* guess guess)
     )
    (* 2 guess)
    )
   3
   )
  )


(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001)
  )

(define (cube-root x)
  (sqrt-iter 1.0 x)
  )
(cube-root 27)
