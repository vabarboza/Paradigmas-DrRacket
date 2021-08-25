#lang racket
(require rackunit)
(require rackunit/text-ui)

;; Numero -> Numero
;; Calcula a prograssão aritimetica
(define pa-tests
  (test-suite
   "PA test"
   (check-equal? (pa 1 3 2) 5)
   (check-equal? (pa 2 3 2) 6)))

(define (pa a1 n r)
  (+ a1 (*  (- n 1)  r )))

;; Teste ... -> Void
;; Executa um conjuto de testes.
(define (executa-testes . testes)
  (run-tests (test-suite "Todos os testes" testes))
  (void))

;; Executando teste
(executa-testes pa-tests)