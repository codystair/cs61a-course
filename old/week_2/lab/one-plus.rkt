#lang simply-scheme

(define (t f)
  (lambda (x) (f (f (f x)))))

(define (1+ num) (+ 1 num))

(define (s x)
  (+ 1 x))