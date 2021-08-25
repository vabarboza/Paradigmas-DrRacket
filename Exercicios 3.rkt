#lang racket
(define (pa a1 n r)
  (+ a1 (*  (- n 1)  r )))

(pa 1 3 2)
(pa 2 3 2)



;an = a1 . 9 n-1
(define (pg a1 n q)
  (* a1 (expt q (- n 1))))

(pg 2 4 3)
(pg 1 10 2)



;Mudando extesão
(define nome "foto.png")

(define (print nome ext)
  (string-append
   (substring nome
             0
             (- (string-length nome) 3))
   ext))

(print nome "pdf")


