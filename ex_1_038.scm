(define (cont_frac n d k)
  (define (iter k result)
    (if (= k 0)
        result
        (iter (- k 1) (/ (n k) (+ (d k) result)))))
  (iter k  0))

(cont_frac (lambda (i) 1.0)
           (lambda (i)
             (if (= (modulo i 3) 1)
                 (* (+ (quotient i 3) 1) 2)
                 1))
           100)
