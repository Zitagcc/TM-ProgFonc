(require racket/string)

(define (jourCorrect? jour)
  (and (>= jour 1) (<= jour 31)))

(define (moisCorrect? mois)
  (and (>= mois 1) (<= mois 12)))

(define (anneeBissextile? annee)
  (= (remainder annee 4) 0))

; --
(define (days-in-year y)
    (if (anneeBissextile? y) 366 365))

(define (conv mois annee)
  (cond ((member mois '(1 3 5 7 8 10 12)) 31)
                    ((member mois '(4 6 9 11)) 30)
                    ((and (= mois 2) (anneeBissextile? annee))
                     29)
                    (else 28)))

(define (date2NbrJr jour mois annee)
  (cond ((> (- mois 1) 0) (+ jour (conv (- mois 1) annee)))
  (else jour)))

(define (rem n )
  (cond ((< n 0) (+ 7 (remainder n 7)))
        (else (remainder n 7)))) 
(define (dateCorrecte? jour mois annee)
  (and (jourCorrect? jour)
       (moisCorrect? mois)
       (let ((jours_dans_mois
              (cond ((member mois '(1 3 5 7 8 10 12)) 31)
                    ((member mois '(4 6 9 11)) 30)
                    ((and (= mois 2) (anneeBissextile? annee))
                     29)
                    (else 28))))
         (<= jour jours_dans_mois))))

(define (JourSemaine n)
  (define Jr (rem n))
  (cond
      ((= Jr 6) "Dimanche")
      ((= Jr 0) "Lundi")
      ((= Jr 1) "Mardi")
      ((= Jr 2) "Mercredi")
      ((= Jr 3) "Jeudi")
      ((= Jr 4) "Vendredi")
      ((= Jr 5) "Samedi")))

(define (JourAnnee)
  (display "tapez une date de la forme jj-mm-aaaa")
  (define date (symbol->string(read)))
  ; --
  (define components (string-split date "-"))
  (define jour (string->number (list-ref components 0)))
  (define mois (string->number (list-ref components 1)))
  (define annee (string->number (list-ref components 2)))
  (dateCorrecte? jour mois annee)
  ; --
  (define dif (- annee 2019))
  (define difBis (quotient dif 4))
  (define nbrJr (date2NbrJr jour mois annee))
  (display "nbrJr : ") (display nbrJr)
  (newline)
    (display "Le ")
    (display date)
    (display " est un ")
    (display (JourSemaine (+ nbrJr dif difBis)))
    (newline))

(JourAnnee)
