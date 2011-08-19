(define (fringe l)

  (define (fringe-recursive items res)
    (if (pair? (car items))
        (fringe-recursive (car items) res)
        (if (null? (cdr items))
             (cons res (car items))
             (fringe-recursive (cdr items)
                               (cons res
                                     (car items))))))

  (fringe-recursive l (list)))


(define x (list (list 1 2) (list 3 4)))

(fringe (list 1 2 3 4))

(cons 1 (car (list 2 3)))

