#lang racket



(define (xor x y z)
  (cond
    [(and x (if y #f #t) (if z #f #t)) #t]
    [(and y (if x #f #t) (if z #f #t)) #t]
    [(and z (if x #f #t) (if y #f #t)) #t]
    [else #f]))


(xor #t #t #t)

