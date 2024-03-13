; 3 : Type d'une expression

(define (type expr)
  (cond
    [(boolean? expr) (display expr) (display " est un booléen")]
    [(symbol? expr) (display expr) (display " est un symbole")]
    [(real? expr) (display expr) (display " est un réel")]
    [(string? expr) (display expr) (display " est un chaine")]
    [(char? expr) (display expr) (display " est un caractère")]
    [(integer? expr) (display expr) (display " est un entier")]
    [else (display "autre")]))

(type 5)