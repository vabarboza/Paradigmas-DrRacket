#lang racket
(require rackunit)
(require rackunit/text-ui)

;; Numero -> Numero
;; Calcula a prograssão geometrica
(define pg-tests
  (test-suite
   "PG test"
      (check-equal? (pg 2 4 3) 54)
      (check-equal? (pg 1 10 2) 512)))

(define (pg a1 n q)
  (* a1 (expt q (- n 1))))

;; Teste ... -> Void
;; Executa um conjuto de testes.
(define (executa-testes . testes)
  (run-tests (test-suite "Todos os testes" testes))
  (void))

;; Executando teste
(executa-testes pg-tests)