(define (JourSemaine n)
  (define Jr (remainder n 7))
  (cond
      ((= Jr 4) "Dimanche")
      ((= Jr 5) "Lundi")
      ((= Jr 6) "Mardi")
      ((= Jr 0) "Mercredi")
      ((= Jr 1) "Jeudi")
      ((= Jr 2) "Vendredi")
      ((= Jr 3) "Samedi")))

(define (JourAnnee)
  (display "tapez un nombre entier entre 1 et 365 ")
  (define nbrJr (read))
  (newline)
  (define annee 2019)
    (display "Le ")
    (display nbrJr)
    (display "ème jour de l’année ")
    (display annee)
    (display " est un ")
    (display (JourSemaine nbrJr))
    (newline))

(JourAnnee)