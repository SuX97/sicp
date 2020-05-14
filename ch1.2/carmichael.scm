(load "fast-prime.scm")

(define (expmod base exp m)
    (cond ((= exp 0)
            1)
          ((even? exp)
            (remainder (square (expmod base (/ exp 2) m))
                       m))
          (else
            (remainder (* base (expmod base (- exp 1) m))
                       m))))

(define (carmichael-test n)
	(test-iter 1 n)
)

;;; test for all 1<= a < n,
;;; if all has a^n mod n = a mod n = a(namely, congruent)
(define (test-iter a n)
	(cond
		((= a n)
			#t)
		((congruent? a n)
			(test-iter (+ a 1) n))
		(else
			#f)))

(define (congruent? a n)
	(= (expmod a n n) a))