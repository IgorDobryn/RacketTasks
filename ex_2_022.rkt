(define (square x) (* x x))

(define (square-list items)
  (define (iter things answer)
    (if (null? things) 
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer
                    )
              )
        )
    )
  (iter items null)
  )

(square-list (list 1 2 3 4 5 6)); результат получен в порядке обратном желаемому, потому что при каждом вхождении в рекурсию мы прикрепляем к текущемому результату накопленый ответ

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))
                    )
              )
        )
    )
  (iter items null)
  )
(square-list (list 1 2 3 4 5 6));в результате получена иерархия списков. На каждом шагу внутрь текущего списка добавлялся еще один список
