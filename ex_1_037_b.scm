(define (cont-frac n d k)
  (define (recursive k)
    (if (= k 0)
        (n k)
        (/ (n k) (+ (d k) (recursive (- k 1))))))

  (recursive k))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           10)

(/ 1 1.618)
