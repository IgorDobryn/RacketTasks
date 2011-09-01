(require rackunit)

(define (get-paskal-triangle-value row column)
        (get-parent row column))

(define (get-parent row column)
  (cond ((or (= column (+ row 1))
             (= column 0))
          1)
        (else (+ (get-parent (- row 1) column)
                 (get-parent (- row 1) (- column 1))))))


(check-equal? (get-paskal-triangle-value 4 0) 1)
(check-equal? (get-paskal-triangle-value 1 2) 1)

(check-equal? (get-paskal-triangle-value 2 1) 3)
(check-equal? (get-paskal-triangle-value 2 2) 3)
(check-equal? (get-paskal-triangle-value 5 2) 15)
(check-equal? (get-paskal-triangle-value 4 2) 10)
