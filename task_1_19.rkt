;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_14) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (square x)
  (* x x)

(define (exponent b n)
  (exp-iter b n 1)
)

(define (exp-iter b n a)
        (cond ((= n 1) (* b a))
              ((even? n) (exp-iter 
                                   (square b) 
                                   (/ n 2) 
                                   a)
                         )
              (else (
                     exp-iter b 
                              (- n 1) 
                              (* a b)
                    )
              )
        )
)

(exponent 3 10000)