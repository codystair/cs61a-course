#lang simply-scheme

(define (make-tester w)
  (lambda (x) (equal? x w)))