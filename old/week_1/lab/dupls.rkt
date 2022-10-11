#lang simply-scheme

(define (remove-dupls sent)
  (cond ((empty? sent) '())
        ((member? (first sent) (butfirst sent)) (remove-dupls(butfirst sent)))
        (else (sentence (first sent) (remove-dupls (butfirst sent))))))