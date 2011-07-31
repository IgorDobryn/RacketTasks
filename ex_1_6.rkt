;; The first three lines of this file were inserted by DrScheme. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname task_1_6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x
                 )
      )
  )
(define (improve guess x)
  (average guess (/ x guess)
           )
  )

(define (average x y)
  (/ (+ x y) 2) 
  )

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)
  )

(define (square x)
  (* x x)
  )


(define (_sqrt x)
  (sqrt-iter 1.0 x)
  )

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)
        )
  )



(_sqrt 9);обновленный вариант ограниченного условия if непременим, т.к. если не срабатывает часть "следствие", вычисляется истинность альтернативного условия. При таком вычислении результирующее значение будет бесконечно долго стремиться к идеальному 