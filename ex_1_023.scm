(require rackunit)

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

(define (prime? n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (square x)
  (* x x))

(define (divides? a b)
  (= (remainder b a) 0))

(define (next-divisor a)
  (if (= a 2) 3
      (+ a 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (search-for-primes start end)
  (define (search-n-primes start end n)
    (timed-prime-test start)
    (cond ((prime? start)
            (search-n-primes (+ start 1) end (- n 1)))
          ((and (<= start end) (> n 0))
            (search-n-primes (+ start 1) end n))))
  (search-n-primes start end 3))



(check-equal? (smallest-divisor 53) 53)
(check-equal? (smallest-divisor 17) 17)

(search-for-primes 100000000000 1000000000000)

;не могу дать точных ответов на вопросы т.к. врепо проверки числа на принадлежность к простым в каждом из случаев равно 0.
;замеры времени на числах более 100000000 дали следующие результаты:
;Начало диапазона | Время на поиск 1-го числа | 2-го | 3-го
;100000000        |             0             |   1  |  1
;1000000000       |             3             |   4  |  4
;10000000000      |            132            |  120 | 119
;100000000000     |            517            |  425 | 449

;Двухкратного ускорения проверки не произошло. Для более точного результата требуется проверка на больших числах, при более длительном вычислении
