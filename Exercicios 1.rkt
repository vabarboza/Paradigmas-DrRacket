#lang racket
;(2 + 4 + 10)
;= 16
(+ 2 4 10)

;(5 + (8)
;(5 + 8)
;= 13
(+ 5 (* 2 4))

;(4 (50)(-(6)(5)))
;(4 (50)(-(11))
;(54 - 11)
;= 43
(+ 4 (* 10 5)(-(+ (* 3 2)(/ 5 1))))

(define(quadrado x)(* x x))

(define(soma-quadrados a b)(+ (quadrado a)(quadrado b)))
(soma-quadrados (+ 2 2) 3)

(define(area base altura)(* base altura))
(area 5 10)

(define(area-triangulo base altura)(/ 2 (* base altura)))
(area-triangulo 8 10)

(define(area-circulo raio)(* pi (* raio raio)))
(area-circulo 2)