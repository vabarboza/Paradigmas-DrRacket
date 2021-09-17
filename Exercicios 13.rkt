#lang racket
(struct arv-bin (v esq dir) #:transparent)


;;Soma de valores de uma arvore
(define (soma-arv arvore)
  (cond
    [(null? arvore) 0]
    [else (+ (arv-bin-v arvore) (soma-arv ( arv-bin-esq arvore) ) (soma-arv (arv-bin-dir arvore)))]))

;;Criação da estrutura
(define folha1 (arv-bin 0 null null))
(define folha2 (arv-bin 5 null null))
(define folha3 (arv-bin 5 null null))
(define folha4 (arv-bin 3 null null))

(define no3 (arv-bin 2 folha1 folha2))
(define no2 (arv-bin 1 folha3 folha4))

(define no1 (arv-bin 0 no3 no2))

;;Testes
(soma-arv no1)
(arv-bin-v no1)
