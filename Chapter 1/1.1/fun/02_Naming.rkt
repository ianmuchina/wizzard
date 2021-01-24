#lang sicp
; Naming and the Environment
; It's done with define
; Measurements
(define width 2)
(define height 3)

; Perimeter
(define  perimeter
    (+
        (* 2 width)
        (* 2 height)))

; Area
( define area (* width height))

; Circle
(define pi 3.14159)
(define radius 10)

(define circumference 
    (* 2  pi radius))

circumference
; 62.8318

area
;6