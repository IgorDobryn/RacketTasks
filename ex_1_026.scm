(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (expmod base (/ exp 2) m); в таком случае expmod будет вычисляться дважды и поэтому порядок роста вырос
                       (expmod base (/ exp 2) m)); в процедуре square, expmod вычисляется 1 раз и результат передается как аргумент
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
         m))))
