#lang simply-scheme

(define (ends-e sent)
  (cond ((empty? sent) sent)
        ((equal? (last (first sent)) 'e) (sentence (first sent) (ends-e (bf sent))))
        (else (ends-e (bf sent))))
  )
