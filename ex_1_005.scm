(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;Нормальный порядок вычислений - выполняется полная подстановка: "раскрывается условие", выполняется подстановка операнда "х", при подстановке операнда "у" происходит ошибка

;при аппликативном порядке происходит вызов функции, рассчитывается предикат условия, возвращается 0
