;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;(A 1 10) = 1024
;(A 2 4) = 65536
;(A 3 3) = 65536

(define (f n) (A 0 n)); вычисляет 2*n
(define (g n) (A 1 n)); вычисляет 2^n
(define (h n) (A 2 n)); вычисляет 2^(n^2)
