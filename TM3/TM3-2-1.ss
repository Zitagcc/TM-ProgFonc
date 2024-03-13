;-------
; 2.2
(define (si condition expr1 expr2)
  (cond (condition expr1)
        (else expr2)))

(si (< 5 2) #true #false)

(define (g x)
  (si (> x 0) (/ 1 x) (- 0 x)))

(g -7)
(g 4)