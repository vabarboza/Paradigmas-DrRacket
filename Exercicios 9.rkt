#lang racket
;;Operador de seleção
(define (positivo-negativo x)
  (if (>= x 0)
     "Positivo"
     "Negativo"))

(positivo-negativo (string->number
                    (read-line (current-input-port))))



(define (read)
  (string->number
   (read-line (current-input-port))))

(define (maior x y z)
  (cond
    [(and (> x y) (> x z)) x]
    [(and (> y x) (> y z)) y]
    [(and (> z x) (> z y)) z]))

(maior (read) (read) (read))




(define (valor x)
  (if (>= x 0)
     (* 2 x)
     (* 3 x)))

(valor (string->number
                    (read-line (current-input-port))))




    