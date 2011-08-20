(define (fringe l)
  (define (end-of-list list)
    (if (null? (cdr list))
         null
         (fringe-recursive (cdr list))))

  (define (fringe-recursive items)
    (if (pair? (car items))
            (append (fringe-recursive (car items))
                    (end-of-list items))
            (append (list (car items))
                    (end-of-list items))))

  (fringe-recursive l))

(define x (list 1 2 3 4))

(fringe x)

(fringe (list x x))
