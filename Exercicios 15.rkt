#lang racket

;;Calcula valores de uma lista
(foldr * 1 '(5 4 3 2 1))

;;Quadrado de valores de uma lista
(map sqr '(1 2 3))

;;Somar o quadrado de todos os valores de uma lista
(foldr + 0(map sqr '(2 4 5)))

;;Filtra os valores baseados na tipagem
(filter integer? '(1 "teste" 3 "funcional"))


;;Filtra os valores pares de uma lista
(define (par? x)
  (= 0 (remainder x 2)))

(filter par? '(2 3 4 5 6))

;;(define (lambda (x) (= 0 (remainder x 2))) '(2 3 4 5 6))


;; Função que calcula o quadrado dos valores da lista, filtra por trez e depois soma os valores divisiveis por 3
(define (div? x)
  (= 0 (remainder x 3)))

(foldr + 0 (filter div? (map sqr '(1 2 3 4 5 6))))


;;(foldr + 0(filter number? '("101" 5.40 "105" 8.90 "106" 12.00 "108" 1.99 "109" 0.50 "110" 10.56)))



(struct produto (codigo valor))

(define lista-produtos
  (list
  (produto 101 5.40)
  (produto 105 8.90)
  (produto 106 12.00)
  (produto 108 1.99)
  (produto 109 0.50)
  (produto 110 10.56)))

(define (find-valor-produto produto ix)
  produto-valor (car (filter (lambda (x) (= ix (produto-codigo x))) lista-produtos)))

(define (calcula-total lista)
  (foldr + 0(map find-valor-produto lista)))

(define carrinho-cliente '(101 105 106 109))

(calcula-total carrinho-cliente)

 


