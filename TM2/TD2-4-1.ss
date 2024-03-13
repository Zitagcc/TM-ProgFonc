; les 3 fonctions permettant de calculer le nombre de
; jours
(define (nbjours temps)
  (quotient temps (* 60 60 24)))
; heures
(define (nbheures temps)
  (quotient temps (* 60 60)))
; minutes
(define (nbminutes temps)
  (quotient temps 60))

; -------------------------
; les 4 fonctions sans retour permettant d'afficher une durée exprimée
; en secondes

; 1
(define (afficher-duree jours heures minutes secondes)
  (display jours) (display " jours, ")
  (display heures) (display " heures, ")
  (display minutes) (display " minutes et ")
  (display secondes) (display " secondes"))

; 2
(define (afficher-duree-heures minutes secondes)
  (display minutes) (display " minutes et ")
  (display secondes) (display " secondes"))
; 3
(define (afficher-duree-minutes secondes)
  (display secondes) (display " secondes"))
; 4
(define (afficher-duree-secondes secondes)
  (display secondes) (display " secondes"))

; ---------------------------
(define (afficher-duree-en-temps temps)
  (let* ((jours (nbjours temps))
         (reste-jours (- temps (* jours (* 60 60 24))))
         (heures (nbheures reste-jours))
         (reste-heures (- reste-jours (* heures (* 60 60))))
         (minutes (nbminutes reste-heures))
         (secondes (- reste-heures (* minutes 60))))
    (afficher-duree jours heures minutes secondes)))

(display "Entrez le nombre de secondes : ")
(let ((secondes (read)))
(afficher-duree-en-temps secondes))
