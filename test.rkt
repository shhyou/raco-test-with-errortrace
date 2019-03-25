#lang racket/base

(define-namespace-anchor here)

(define ns (make-empty-namespace))
(parameterize ([current-namespace ns])
  (namespace-attach-module (namespace-anchor->namespace here) ''#%kernel)
  (namespace-attach-module (namespace-anchor->namespace here) ''#%builtin)
  (dynamic-require 'errortrace #f)
  (dynamic-require 'compiler/commands/test #f))
