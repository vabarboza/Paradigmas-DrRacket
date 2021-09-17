#lang racket
(define (calc-list op lista ret-null)
  (cond
    [(null? lista) ret-null]
    [else (op (car lista) (calc-list op (cdr lista) ret-null))]))

(calc-list + ' (1 2 3) 0)


;; Funções a serem chamadas
(define (f1 x)
  ( + (* x x) (* 3 x)))


;;CHamando a função
(define (somatorio op a b)
  (if (> a b)
     0
     (+ (op a) (somatorio op (+ 1 a) b))))

(somatorio f1 1 3)

