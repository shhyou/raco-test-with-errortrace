#lang info
(define collection "raco-test-errortrace")
(define deps '("base"
               "compiler-lib"
               "errortrace-lib"))
(define pkg-desc "Invoking raco test With Errortrace")
(define version "0.1")
(define pkg-authors '(shhyou))

(define raco-commands
  '(("test-e" raco-test-errortrace/test "Load `errortrace` then invoke `raco test`." #f)))
