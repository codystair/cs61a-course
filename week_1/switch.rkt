#lang simply-scheme

(define (switch sent)
  (cond ((empty? sent) 
         (sent))
        ((or (equal? ((first sent) 'I)) (equal? (first sent) 'i)) 
         (sentence 'you (switch (butlast sent))))
        ((or (first sent 'Me) (first sent 'me)) 
         (sentence 'you (switch (butlast sent))))
        ((or (first sent 'You) (first sent 'you)) 
         (sentence 'me (switch (butlast sent))))))