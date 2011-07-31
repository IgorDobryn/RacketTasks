;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;результат для (+ 4 5)
;(+ 4 5)
;  (inc (+ 3 5))
;       (inc (+ 2 5))
;            (inc (+ 1 5))
;                 inc ((+ 0 5))
;                      (5)
;res = 9

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
;(+ 4 5)
; (+ 3 6)
;  (+ 2 7)
;   (+ 1 8)
;    (9)
