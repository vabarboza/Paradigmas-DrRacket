#lang racket
;;par
(define (par? x)
  (zero? (remainder x 2)))

;;impar
(define (impar? x)
  (not (par? x)))

(define (multiplo? x y)
  (zero? (remainder x y)))


(define (read)
  (string->number
   (read-line (current-input-port))))

(define (aprovado? nota base)
  (>= nota base))

(define (reprovado? nota base)
  (not (aprovado? nota base)))


(aprovado? (read) (read))

