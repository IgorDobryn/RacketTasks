(define (f_recursive n)
  (cond ((<= n 3) n)
        (else (+ (f_recursive (- n 1)) (f_recursive (- n 2)) (f_recursive (- n 3))))
        )
  )

(define (f_iter_calc counter n n1 n2 n3)
  (cond ((= counter n)
         n3)
        (else
         (f_iter_calc
          (+ counter 1)
          n
          n2
          n3
          (+ n1 n2 n3)
          )
         )
        )
  )
(define (f_iterative n)
  (cond ((<= n 3)
         n)
        (else
         (f_iter_calc 3 n 1 2 3)
         )
        )
  )
(f_iterative 10)
(f_recursive 10)
