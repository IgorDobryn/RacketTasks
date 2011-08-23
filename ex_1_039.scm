(define (cont-frac x d k)
  (define (iter k result)
    (if (= k 0)
        result
        (iter (- k 1) (/ (* x x) (- (d k) result)))))
  (/ x (- (d 0) (iter k  0))))

(cont-frac 10.
           (lambda (i)
             (+ (* i 2) 1))
           100);0.6483608274590866

(tan 10);0.6483608274590866
