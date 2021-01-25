; Exercise 1.3: 
#lang sicp
;Define a procedure that takes 
;   three numbers as arguments ....
;   returns the sum of the squares of the two larger numbers. 

; square of x
(define (square x)
        (* x x))

; Sum of square of x and square of y
(define (sos x y)
        ( + (square x) 
            (square y)))

; The main fnction
(define (fn a b c) 
    ;Body
    (cond
    ; Normal case: no numbers are equal
        ; if c is the lowest
        ((and ( <= c a ) ( <= c b ))
            ; square a and b
            (sos a b))

        ; if b is the lowest
        ((and ( <= b a ) ( <= b c ))
            ; square a and c
            (sos a c))
            
        ; if a is the lowest
        ((and ( <= a c ) ( <= a b ))
            ;square b and c
            (sos c b))))
        ; Edge case; 2 numbers are equal

; Checks: Should prooduce #t
; source: codology.net/post/sicp-solution-exercise-1-3/
; Checks
; Normal: 0 numbers are equal
(= (fn 1 10 100) (sos 10 100))
(= (fn 1 100 10) (sos 10 100))
(= (fn 10 1 100) (sos 10 100))
(= (fn 10 100 1) (sos 10 100))
(= (fn 100 10 1) (sos 10 100))
(= (fn 100 1 10) (sos 10 100))

; Corner case : 3 numbers are equal
(= (fn 10 10 10) (sos 10 10))
; Edge case : 2 numbers are equal
(= (fn 1 10 10) (sos 10 10))
(= (fn 10 1 10) (sos 10 10))
(= (fn 10 10 1) (sos 10 10))
