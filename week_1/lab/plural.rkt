#lang simply-scheme

(define (plural wd)
  (cond ((and (equal? (last wd) 'y) (vowel? (next-to-last wd)))(word wd 's))
        ((equal? (last wd) 'y) (word (bl wd) 'ies))
        (else (word wd 's))))

(define (vowel? wd) (member? wd 'aeiou))

(define (next-to-last wd) (last (butlast wd)))
