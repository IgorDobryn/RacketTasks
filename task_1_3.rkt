;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (bigest_num_sum_squares a b c)
  (cond ((and (< a b) (< a c)) 
             (+ (* b b) (* c c)))
        ((and (< b a) (< b c)) 
             (+ (* a a) (* c c)))
        ((and (< c b) (< c a)) 
             (+ (* b b) (* a a)))
   )
  )