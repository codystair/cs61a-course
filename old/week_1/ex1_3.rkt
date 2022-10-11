#lang simply-scheme

(define (sum-two-larger x y z)
  (cond ((and (> x z) (> y z)) (sum-of-squares x y))
        ((and (> x y) (> z y)) (sum-of-squares x z))
        (else (sum-of-squares y z))))

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))