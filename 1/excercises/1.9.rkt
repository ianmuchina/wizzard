#lang sicp
(define (p a b)
  (if (= a 0) 
      b 
      (inc (+ (dec a) b))))

(define (e a b)
  (if (= a 0) 
      b 
      (+ (dec a) (inc b))))

