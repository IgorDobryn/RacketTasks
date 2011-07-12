;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (get_Paskal_triangle_value row column)
 (cond (
        (and (= row 0) (= column 0)) 1
         )
       (else (get_parent row column)        
        )
       )
 )
(define (get_parent row column)
  (cond (
         (or (= row 0) (= column 0)) 
         1
         )
        (else
         (+
          (get_parent (- row 1) column)
          (get_parent row (- column 1))
          )
         )  
  )
 )
  

(get_Paskal_triangle_value 3 2)