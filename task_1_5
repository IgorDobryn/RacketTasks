;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;Нормальный порядок вычислений - выполняется полная подстановка: "раскрывается условие", выполняется подстановка операнда "х", при подстановке операнда "у" происходит ошибка

;при аппликативном порядке происходит вызов функции, рассчитывается предикат условия, возвращается 0
