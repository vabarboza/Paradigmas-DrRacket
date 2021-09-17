#lang racket

;; Arvore é um grafo conexo assicroco 

;; Refaça a função definida para calucula a distancia etre dois pontos de um plano cartesiano
;; d² = (xb - xa)² + (yb - a)²

(struct ponto-cartesiano (x y))

(define ponto1 (ponto-cartesiano 1 1))
(define ponto2 (ponto-cartesiano 2 2))

(define (distancia p1 p2)
  (sqrt (+
   (sqr (- (ponto-cartesiano-x p2) (ponto-cartesiano-x p1)))  
   (sqr (- (ponto-cartesiano-y p2) (ponto-cartesiano-y p1))))))

(distancia ponto1 ponto2)


;; Defina uma funcão que some todos os valores de uma lista, Se houver listas aninhadas, os valores dever ser somados.
(define (soma lista)
  (cond
    [(null? lista) 0]
    [(list? (car lista))
     (+ (soma (car lista)) (soma (cdr lista)))]
    [else (+ (car lista) (soma (cdr lista)))]))


(soma (list 1 2 3))
(soma (list 1 2 (list 1 (list 2 3 (list 4 6 8)))))



(define (somas lista)
  (cond
    [(null? lista) 0]
    [(list? (car lista))
     (+ (soma car lista))]))

(somas (list 4 5 6))