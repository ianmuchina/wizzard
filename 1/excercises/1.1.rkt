#lang sicp
;Simple excercise to learn about the basics of scheme

; Exercise 1.1
; Below is a sequence of expressions.
;     What is the result printed 
;     by the interpreter in response to each expression? 
; Assume that the sequence 
;     is to be evaluated in 
;     the order in which it is presented.


10
;10

(+ 5 3 4)
;12

(- 9 1)
;8

(/ 6 2)
;3

(+ (* 2 4) (- 4 6))
;6

(define a 3) 
; Blank

(define b (+ a 1))
; Blank

(+ a b (* a b))
;19

(= a b)
; False

(if (and (> b a) (< b (* a b)))
    b
    a)

;(if (and (> 4 3) (< 4 (* 3 4)))
;    4
;    3)

;(if (true)
;    4
;    3)
; Answer: 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

;(cond ((false) 6)
;      ((true) (16)) # STOP!!
;      (else 25))
;Answer: 16

(+ 2 
(if (> b a) b a))

;(+2 (if (> 4 3) 4 3))
;(+2 (if (true) 4 3))
;(+ 2 4)
;Answer: 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
   
; Evaluate conditional
; (cond ((> 3 4) 4)
;          ((< 3 4) 4)
;          (else -1))
;
; (cond   (false 4)
;         (true 4)
;         (else -1))
; returns 4
; ---------------
; (* 4 (+ 3 1))
; (* 4 4)
; Answer: 16