; jourCorrect?
(define (jourCorrect? jr)
  (cond
    [(and (<= jr 31) (>= jr 1)) #true]
    [else #false]))

(jourCorrect? 35)

; moisCorrect?
(define (moiCorrect? mois)
  (cond
    [(and (<= jr 12) (>= jr 1)) #true]
    [else #false]))

(moiCorrect? 35)

; dateCorrecte?
(define (moiCorrect? day month year)
  (cond
    [(and (<= jr 12) (>= jr 1)) #true]
    [else #false]))

