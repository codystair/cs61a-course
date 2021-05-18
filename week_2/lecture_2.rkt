#lang simply-scheme

; (define (make-adder num)
;   (lambda (x) (+ x num)))

; (define plus3 (make-adder 3))
; (define plus5 (make-adder 5))

; (plus3 8)
; (plus5 7)
; (plus5 (plus3 2))
; ((make-adder9) 7)


(define square (lambda (x) (* x x)))

(define (compose f g)
  (lambda (x) (f (g x))))

((compose first bf) '(she loves you))

(define second (compose first bf))

(second '(i want to hold your hand))

(define (twice f) (compose f f))

((twice square) 3)
