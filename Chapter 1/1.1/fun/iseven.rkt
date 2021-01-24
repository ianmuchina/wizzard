#lang sicp

(define (iseven x)

    (define y ( remainder x 2))
    (cond ;Even
        ((= y 0) "Even")
        ;Odd
        ((> y 0) "Odd")))

(iseven 23)
(iseven 40)