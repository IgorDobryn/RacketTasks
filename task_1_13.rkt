;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define f  
  (/
   (+ 
    1 
    (sqrt 5)
   )
   2
  )
)

(define w  
  (/
   (- 
    1 
    (sqrt 5)
   )
   2
  )
)

(define (fib1 n)
  (/
   (-
    (expt f n)
    (expt w n)    
   )
   (sqrt 5)
  )
)

(define (fib n)
  (fib-iter 1 0 n)
)

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) 
                a 
                (- count 1)
      )
  )
)
(fib 20)
(fib1 20)