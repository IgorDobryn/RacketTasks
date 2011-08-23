(define (get-Paskal-triangle-value row column)
  (cond ((and (= row 0)
              (= column 0))
          1)
        (else (get-parent row column))))

(define (get-parent row column)
  (cond ((or (= row 0)
             (= column 0))
          1)
        (else (+ (get-parent (- row 1) column)
                 (get-parent row (- column 1))))))


(get-Paskal-triangle-value 3 2)
