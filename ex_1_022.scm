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


;(search-for-primes 1000 10000)
;наименьшие 3 числа после 1000: 1009, 1013, 1019
;(search-for-primes 10000 100000)
;наименьшие 3 числа после 10000: 10007, 10009, 10037
;(search-for-primes 100000 1000000)
;наименьшие 3 числа после 100000: 100003, 100019, 100043
;(search-for-primes 1000000 10000000)
;наименьшие 3 числа после 1000003: 100003, 1000033, 1000037


;не могу дать точных ответов на вопросы т.к. врепо проверки числа на принадлежность к простым в каждом из случаев равно 0.
;замеры времени на числах более 100000000 дали следующие результаты:
;Начало диапазона | Время на поиск 1-го числа | 2-го | 3-го
;100000000        |             1             |   2  |  1
;1000000000       |             4             |   3  |  4
;10000000000      |            131            |  128 | 119
;100000000000     |            590            |  403 | 413

;Предположение о том, что программы на моей машине затрачивают на выполнение задач время, пропорциональное число шагов не верно.
;Это видно из шагов 2-4: для определения первого числа времени ушло больше чем для 2-го и 3-го

;Предположение о том, что проверка на простоту чисел более 10000000000 занимает в sqrt(10) ы раз меньше времени,
;чем проверка на простоту чисел более 100000000000 подтверждается
;(отношение среднего значения по 3-му шагу к среднему значению по 4-му шагу 3.7 =~ sqrt(10)).
