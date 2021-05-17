#lang simply-scheme

; (define (area shape r) (* shape r r))

; (define pi 3.14)
; (define square 1)
; (define circle pi)
; (define sphere (* 4 pi))
; (define hexagon (* (sqrt 3) 1.5))


; (define (sumsquare a b)
;   (if (> a b)
;       0
;       (+ (* a a) (sumsquare (+ a 1) b))))

; (define (sumcube a b)
;   (if (> a b)
;       0
;       (+ (* a a a) (sumcube (+ a 1) b))))

; (define (sum func a b)
;   (if (> a b)
;       0
;       (+ (func a) (sum func (+ a 1) b))))

; (define (square x) (* x x))

; (sum square 3 5)
; (sum (lambda (x) (* x x x)) 3 5)


(define (evens nums)
  (cond ((empty? nums) '())
        ((= (remainder (first nums) 2) 0)
         (sentence (first nums) (evens (bf nums))))
        (else (evens (bf nums)))))

(define (ewords sent)
  (cond ((empty? sent) '())
        ((member? 'e (first sent))
         (sentence (first sent) (ewords (bf sent))))
        (else (ewords (bf sent)))))

(define (filter func sent)
  (cond ((empty? sent) '())
        ((func (first sent))
         (sentence (first sent) (filter func (bf sent))))
        (else (filter func (bf sent)))))

(define (is-even num)
  (= (remainder num 2) 0))

(filter is-even '(1 2 3 4 5 6 7 8))