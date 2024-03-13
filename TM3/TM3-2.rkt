(define (fct x)
  (cond
    [(integer? x) #true]
    [else #false]))

;(fct 10)

(define (g1 x)
  (if (>  x 0) (/ 1 x)
      (- 0 x)))

(g1 4)
(g1 -7)
(g1 0)
; ---
(define (g x)
  (cond ((> x 0) (/ 1 x))
        (else (- 0 x))))

;(g -7)
