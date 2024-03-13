;;;;;;;;;;;;;;;;;;;;;;;
; Programme Pythagore ;
;;;;;;;;;;;;;;;;;;;;;;;
; Vérifie pour toute valeur numérique
; que la somme du cosinus et sinus est égale à 1
(display "Taper une valeur numérique")
(define x (read))
(newline)
(+ (* (sin x) (sin x)) (* (cos x) (cos x)))
(display x)

