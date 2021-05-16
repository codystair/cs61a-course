#lang simply-scheme

(define (switch sent)
  (if (empty? sent)
      '()
      (sentence (change-word (first sent)) 
                (switch (butfirst sent)))))

(define (change-word word)
  (cond ((equal? word 'I) 'you)
        ((equal? word 'me) 'you)
        ((equal? word 'You) 'I)
        ((equal? word 'you) 'I)
        (else word)))
