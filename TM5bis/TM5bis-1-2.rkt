; TM5Bis
(require (lib "turtles.ss" "graphics"))

(define (traceCote nGen lenAr)
  (if (= nGen 0) (draw lenAr)
      (begin
        (traceCote (- nGen 1) (/ lenAr 4))
        (turn 90)
        (traceCote (- nGen 1) (/ lenAr 4))
        (turn -90)
        (traceCote (- nGen 1) (/ lenAr 4))
        (turn -90)
        (traceCote (- nGen 1) (/ lenAr 4))
        (traceCote (- nGen 1) (/ lenAr 4))
        (turn 90)
        (traceCote (- nGen 1) (/ lenAr 4))
        (turn 90)
        (traceCote (- nGen 1) (/ lenAr 4))
        (turn -90)
        (traceCote (- nGen 1) (/ lenAr 4)))))


;(turtles #t)

;(traceCote 1 300)


(define (carreVonKoch nGen lenAr)
  (begin
    (traceCote nGen lenAr)
    (turn 90)
    (traceCote nGen lenAr)
    (turn 90)
    (traceCote nGen lenAr)
    (turn 90)
    (traceCote nGen lenAr)
    (turn 90)))


(display "Tracé d'une île de Von Koch de base carrée")
(newline)
(display "Génération ? ")
(define generation (read))
(display "Longueur du côté du carré servant de base ? ")
(define longueur (read))
(turtles #t)
(move (/ longueur -2))
(turn -90)
(move (/ longueur 2))
(turn 90)
(carreVonKoch generation longueur)
(turn -90)
(move (/ longueur -2))
(turn 90)
(move (/ longueur 2))

  
  