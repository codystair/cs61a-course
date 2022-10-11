#lang simply-scheme

; (define (sqrt x)
;   (sqrt-iter 1.0 x))

; (define (sqrt-iter guess x)
;   (new-if (good-enough? guess x)
;           guess
;           (sqrt-iter (improve guess x) x)))

; (define (improve guess x)
;   (average guess (/ x guess)))

; (define (average x y)
;   (/ (+ x y) 2))

; (define (good-enough? guess x)
;   (< (abs (- (square guess) x)) 0.001))

; (define (square x) (* x x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (pigl wd)
  (new-if (pl-done? wd)
          (word wd 'ay)
          (pigl (word (bf wd) (first wd)))))

(define (pl-done? wd)
  (vowel? (first wd)))

(define (vowel? letter)
  (member? letter '(a e i o u)))
