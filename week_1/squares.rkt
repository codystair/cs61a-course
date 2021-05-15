#lang simply-scheme

(define (squares nums)
  (if (empty? nums) nums
      (sentence (sq (first nums)) (squares (butfirst nums)))))

(define (sq x) (* x x))