;Definitions
(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

; Execution
(test 0 (p))
;     x  y
(if (= 0 0)
    0
    (p))

; Function returns 0 when we only expand up to primitives

(if (= 0 0)
    0
    (p))
; Function makes an infinite loop if everything is evaluated first