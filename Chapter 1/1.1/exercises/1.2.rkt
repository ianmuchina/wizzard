#lang sicp

; Excercise 1.2
; Rewrite a perfectly readable & intuitive math expression 
;     into prefix-notation. Why

; Prefix notation Question

; Rewrite this math expression in prefix notation
;
; 5 + 4 + ( 2 − ( 3 − ( 6 + 4/5 ) ) ) 
; ------------------------------------
;     3 ( 6 − 2 ) ( 2 − 7 )
;
(/ 

; Nominator
( + 5 4 
    ( - 2 
        (- 3 
           ( + 6 ( / 4 5)))))
;Denominator
( * 
    ( * 3 
        (- 6 2)) 
    (- 2 7)))

; Answer:  -37/150