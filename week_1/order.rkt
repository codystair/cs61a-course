#lang simply-scheme

(define (f a b) (+ (g a) b))

(define (g x) (* 3 x))

(f (+ 2 3) (- 15 6))

(define (zero x) (- x x))

(zero (random 10))