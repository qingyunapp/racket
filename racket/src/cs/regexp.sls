(library (regexp)
  (export)
  (import (rename (chezpart)
                  [define chez:define])
          (rename (rumble)
                  ;; Remapped to place-local register operations:
                  [unsafe-make-place-local rumble:unsafe-make-place-local]
                  [unsafe-place-local-ref rumble:unsafe-place-local-ref]
                  [unsafe-place-local-set! rumble:unsafe-place-local-set!])
          (io))

  (include "place-register.ss")
  (define-place-register-define define regexp-register-start regexp-register-count)

  (include "include.ss")
  (include-generated "regexp.scm")

  (set-intern-regexp?! 1/regexp?))
