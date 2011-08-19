(define (deep-reverse l)
  (define (reverse items res)
    (if (null? (cdr items))
      (if (pair? (car items))
        (cons (reverse (car items) (list ))
              res)
         (cons (car items) res))
      (reverse (cdr items)
               (cons (if (pair? (car items))
                         (reverse (car items) (list))
                         (car items))
                     res))))

  (reverse l (list)))

(define x (list (list 1 2) (list 3 4)))

x
(deep-reverse x)

