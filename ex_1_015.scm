(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 3 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))

(sine 12.15)
;а:
; 1. angle = 12.15
; 2. angle = 4.05
; 3. angle = 1.35
; 4. angle = 0.45
; 5. angle = 0.15
; 6. angle = 0.05
;6 раз
;б  порядок роста в терминах количества шагов - O(2/3*n)
;в терминах используемой памяти O(1)
