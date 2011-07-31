;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1__) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (f_recursive n)
  (cond ((<= n 3) n)
        (else (+ (f_recursive (- n 1)) (f_recursive (- n 2)) (f_recursive (- n 3))))
        )
  )

(define (f_iter_calc counter n n1 n2 n3)
  (cond ((= counter n) 
         n3)
        (else 
         (f_iter_calc 
           (+ counter 1)
           n
           n2
           n3
           (+ n1 n2 n3)           
          )
         )    
    )  
  )
(define (f_iterative n)
  (cond ((<= n 3)
         n)
        (else 
         (f_iter_calc 3 n 1 2 3)
         )        
        ) 
  )
(f_iterative 10)
(f_recursive 10)