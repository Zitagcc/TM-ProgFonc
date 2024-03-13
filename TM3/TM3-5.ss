(define (jourCorrect? jour)
  (and (>= jour 1) (<= jour 31)))

(define (moisCorrect? mois)
  (and (>= mois 1) (<= mois 12)))

(define (anneeBissextile? annee)
  (= (remainder annee 4) 0))


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


(display (dateCorrecte? 29 2 2024))  
