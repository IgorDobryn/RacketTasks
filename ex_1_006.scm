(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(sqrt 9);обновленный вариант new-if не применим, т.к. в Scheme используется аппликативный порядок вычисления. 
        ;Соответственно все аргументы new-if будут вычислены при вызове. Вычисление else-clause уйдет в бесконечный цикл