raco-test-errortrace
====================

Invoking the `raco test` command with `errortrace` on.
Note that this tool does not recompile bytecodes.

Usual `raco test` command:

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
