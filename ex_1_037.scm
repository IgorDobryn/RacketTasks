(define (cont-frac n d k)
  (define (iter k result)
    (if (= k 0)
        result
        (iter (- k 1) (/ (n k) (+ (d k) result)))))
  (iter k  0))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           10)

(/ 1 1.618)
