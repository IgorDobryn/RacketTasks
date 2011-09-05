(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (cond ((prime? n)
        (report-prime (- (current-milliseconds) start-time)))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
         m))))

(define (prime? n)
  (fast-prime? n 30))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))



(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square n)
  (* n n))

(define (search-for-primes start end)
  (define (search-n-primes start end n)
    (timed-prime-test start)
    (cond ((prime? start)
            (search-n-primes (+ start 1) end (- n 1)))
          ((and (<= start end) (> n 0))
            (search-n-primes (+ start 1) end n))))
  (search-n-primes start end 3))


(search-for-primes 1000000000 10000000000)


;не могу дать точных ответов на вопросы т.к. врепо проверки числа на принадлежность к простым в каждом из случаев равно 0.
;замеры времени на числах более 100000000 дали следующие результаты:
;Начало диапазона | Время на поиск 1-го числа | 2-го | 3-го
;100000000        |             4             |   1  |  3
;1000000000       |             2             |   3  |  2
;10000000000      |             -             |   -  |  -
;100000000000     |             -             |   -  |  -

;Двухкратного ускорения проверки не произошло. Для более точного результата требуется проверка на больших числах, при более длительном вычислении
;При вычислении search-for-primes с аргументом более 10000000000 происходит ошибка в процедуре  random
