(define (futur verbe)
  ; affiche la conjugaison au futur d'un verbe régulier du premier groupe donné à l'infinitif
  ; chaine ->
  ; EI : quelconque ; EF : affichage
  (begin
    (display "je ") (display (string-append verbe "ai"))
    (newline)
    (display "tu ") (display (string-append verbe "as"))
    (newline)
    (display "il/elle ") (display (string-append verbe "a"))
    (newline)
    (display "nous ") (display (string-append verbe "ons"))
    (newline)
    (display "vous ") (display (string-append verbe "ez"))
    (newline)
    (display "ils/elles ") (display (string-append verbe "ont"))
    (newline)))


(futur "chanter")