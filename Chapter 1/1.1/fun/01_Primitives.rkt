#lang sicp

;Primitives
;expressions
1 ; Numbers are a promitive expression

; Math operators are Procedures 
; + - / *

; Compound Expression,  prefix notation
(- 1 )
;2

(- 5 1)
;=4
(* 2 2)
;=4

(/ 100 2)
;=50

;;Expressions like these are called combinations
;; + is an operator
;; 1 is an operrand

;;Regular
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
;=57

;; Pretty Printed 
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

;=57