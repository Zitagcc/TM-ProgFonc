(require (lib "turtles.ss" "graphics"))

(define (traceCote nGen lenAr)
  (if (= nGen 0) (draw lenAr)
      (begin
        (traceCote (- nGen 1) (/ lenAr 3))
        (turn -60)
        (traceCote (- nGen 1) (/ lenAr 3))
        (turn 120)
        (traceCote (- nGen 1) (/ lenAr 3))
        (turn -60)
        (traceCote (- nGen 1) (/ lenAr 3)))))

(define (flocon nGen lenAr)
  (begin
    (traceCote nGen lenAr)
    (turn 120)
    (traceCote nGen lenAr)
    (turn 120)
    (traceCote nGen lenAr)
    (turn 120)))
         
         
        
(define nGen 4) ; fraction deepness
(define lenAr 100) ;lenght of edge

(display "Tracé d'un flocon de Von Koch")
(newline)
(display "Génération ? ")
(define generation (read))
(display "Longueur de côté ? ")
(define longueur (read))
(turtles #t)
; h² + 1/4 lenAr² = lenAr²
; h² = 3/4 lenAr²
; h = racine(3)/2 lenAr ; hauteur du triangle équilatéral correspondant à la génération 0
; r = 2/3 h = lenAr / racine(3) ; rayon du cercle cirsconscrit
; (dans un triangle équilatéral, le centre du cercle circonscrit se trouve aux 2/3 d'une hauteur en partant d'un sommet)
(let ((r (/ longueur (sqrt 3))))
  (turn 30)
  (move (- r))
  (turn -30)
  (flocon generation longueur)
  (turn 30)
  (move r)
  )