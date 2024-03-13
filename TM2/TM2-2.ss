; 1
(define (volumeSphere r)
  (* (/ 4 3) pi)
  (* r (* r r)))

(volumeSphere 0.5)

; 2
(define (f x y z) y)

(f 2 3 4)

; 3
(define (successeur x)
  (+ x 1))

(successeur 4)



