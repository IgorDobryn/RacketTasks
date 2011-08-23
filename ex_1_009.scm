(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;результат для (+ 4 5)
;(+ 4 5)
;  (inc (+ 3 5))
;       (inc (+ 2 5))
;            (inc (+ 1 5))
;                 inc ((+ 0 5))
;                      (5)
;res = 9

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
;(+ 4 5)
; (+ 3 6)
;  (+ 2 7)
;   (+ 1 8)
;    (9)
