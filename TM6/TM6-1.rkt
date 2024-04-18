(require (lib "trace.ss"))

; 1ere version
(define (fibonacci1 n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fibonacci1 (- n 1)) (fibonacci1 (- n 2))))))

; 2e version
(define (fibonacci2 n)
  (if (< n 2) n
      (fib n 2 1 0)))

;fib est récursive terminale
(define (fib n i f1 f2)
  (if (= i n) (+ f1 f2)
      (fib n (+ i 1) (+ f1 f2) f1)))

(trace fibonacci1 )

(fibonacci1 5)

(untrace fibonacci1)