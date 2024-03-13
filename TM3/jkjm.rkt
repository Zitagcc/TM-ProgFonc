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

(conv 3 2024)

(define (date2NbrJr jour mois annee)
  (cond ((> (- mois 1) 0) (+ jour (conv (- mois 1) annee)))
  (else jour)))


(date2NbrJr 2 4 2024)