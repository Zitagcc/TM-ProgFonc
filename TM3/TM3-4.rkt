; Au marché

(define (prix poids nomLegume)
  
  (cond
    [(string=? nomLegume "carottes")
     (display "le prix des carottes :") (display (* poids 5.25))]
    ;---
    [(string=? nomLegume "pommes de terre")
     (display "le prix :") (display (* poids 2.5))]
    ; ---
    [(string=? nomLegume "navets")
     (display "le prix des navets :") (display (* poids 6.2))]
    [else (display "erreur")]))

(prix 1.4 "carottes")
