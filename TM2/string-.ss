; 3.2 (Attention aux spécifications)
(define (lireChaine)
  (symbol->string (read)))

(define (premier ch)
  (string-ref ch 0))

(define (dernier ch)
  (string-ref ch (- (string-length ch) 1)))

(define (debut chd)
  (substring ch 0 (- (string-length ch) 1)))

(define ch (lireChaine))
(debut ch)