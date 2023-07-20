raco-test-with-errortrace
====================

**Note: Since Racket v8.7 (or [compiler-lib](https://pkgs.racket-lang.org/package/compiler-lib) v1.12, `raco test` [supports the `--errortrace` option](https://docs.racket-lang.org/raco/test.html), superseding this package.**

--------

`raco test-e`: Load `errortrace` then invoke `raco test`.
Note that this command does not recompile bytecodes.

Usual `raco test` commands:

```
$ raco test example.rkt
raco test: (submod "example.rkt" test)
--------------------
FAILURE
name:       check-equal?
location:   example.rkt:5:2
actual:     5
expected:   "NO"
--------------------
1/1 test failures
```

`errortrace` loaded before `raco test`:

```
$ raco test-e example.rkt
raco test: (submod "example.rkt" test)
--------------------

  errortrace...:
   ....../racket/share/pkgs/rackunit-lib/rackunit/private/check.rkt:115:13: (module* test #f (require rackunit) (check-equal? 5 "NO"))
name:       check-equal?
location:   example.rkt:5:2
actual:     5
expected:   "NO"
--------------------
1/1 test failures
```
