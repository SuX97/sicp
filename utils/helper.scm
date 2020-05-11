(define (sum-of-squares x y)
    (+ (square x) 
       (square y)))

(define (bigger x y)
    (if (> x y)
        x
        y))

(define (smaller x y)
    (if (> x y)
        y
        x))

(define (dec x)
    (- x 1)
)

(define (inc x)
    (+ x 1)
)