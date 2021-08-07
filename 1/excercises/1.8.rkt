#lang sicp

(define (improve x guess)
  ( / ( + ( / x ( * guess guess )) ( + guess guess )) 3 ))

(define (cb-iter x guess)
  (if (good-enough x guess) guess
      (cb-iter x (improve x guess))))

(define (cb x) (cb-iter x 1.0 ))

(define (cube x) (* x x x))

(define (good-enough x guess)
;The only good enough is if the guess never changes
  (= (- (improve x guess) guess) 0))

(cb 2.7)