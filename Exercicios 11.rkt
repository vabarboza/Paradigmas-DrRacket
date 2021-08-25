#lang racket
;;Defina uma função que retorna uma lista de todos os valores impares de uma lista aninhada.
(define (filtra-impares lista)
  (cond
    [(null? lista) 0]
    [(list? (car lista))
     (append (filtra-impares (car lista)) (filtra-impares (cdr lista)))]
    [else
     (if (not (= 0 (remainder (car lista) 2)))
        (cons (car lista) (filtra-impares (cdr lista)))
        (filtra-impares (cdr lista)))]))



(filtra-impares (list 1 2 3))
;'(1.3)

(filtra-impares (list 1 2 (list 1 2 3)))
