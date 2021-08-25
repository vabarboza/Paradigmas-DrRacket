#lang racket
(define (print texto valor)
  (string-append texto ": " valor))

(define(quadrado x)(* x x))

(print "Area do quadrado é" (~v(quadrado 3)))

(define x 3.14)
(define y 180)

(radians->degrees x)
(degrees->radians y)

;seno
;calcula baseada radiano e nao em graus
;valores são aproximados
(sin x)


;Pitagoras
(define (pitagoras b c)
  (sqrt (+ (sqr b)(sqr c))))

(pitagoras 3 4)
(pitagoras 5 6)
(pitagoras 4 3)


;Distancia entre dois pontos
(define xa -3)
(define ya -11)

(define xb 2)
(define yb 1)

(define (distancia xa xb ya yb)
  (sqrt (+ (sqr(- xb xa))(sqr(- yb ya)))))

(distancia xa xb ya yb)