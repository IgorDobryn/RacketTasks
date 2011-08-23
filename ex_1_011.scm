(define (f-recursive n)
  (cond ((<= n 3) n)
        (else (+ (f-recursive (- n 1))
                 (f-recursive (- n 2))
                 (f-recursive (- n 3))))))

(define (f-iter-calc counter n n1 n2 n3)
  (cond ((= counter n) n3)
        (else (f-iter-calc (+ counter 1)
                            n
                            n2
                            n3
                            (+ n1 n2 n3)))))

(define (f-iterative n)
  (cond ((<= n 3)
         n)
        (else
         (f-iter-calc 3 n 1 2 3))))

(f-iterative 10)
(f-recursive 10)
