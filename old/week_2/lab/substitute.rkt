#lang simply-scheme

(define (substitute sent old-wd new-wd)
  (cond ((empty? sent)
         '())
        ((equal? (first sent) old-wd)
         (sentence new-wd (substitute (bf sent) old-wd new-wd)))
        (else (sentence (first sent) (substitute (bf sent) old-wd new-wd)))) ) 