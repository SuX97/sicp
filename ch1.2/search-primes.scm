(define (next n)
	(if (= n 2)
		3
		(+ n 2)))

(define (divides? a b)
    (= (remainder b a) 0))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n)
			n)
          ((divides? test-divisor n)
            test-divisor)
          (else
            (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (prime? n)
	(= (smallest-divisor n) n)
)

(define (next-odd n)
    (if (odd? n)
        (+ 2 n)
        (+ 1 n)))

(define (continue-primes n count)
    (cond ((= count 0)
            (display "are primes."))
          ((prime? n)
            (display n)
            (newline)
            (continue-primes (next-odd n) (- count 1)))
          (else
            (continue-primes (next-odd n) count))))

(define (search-for-primes n)
    (let ((start-time (real-time-clock)))
        (continue-primes n 3)
        (- (real-time-clock) start-time)))