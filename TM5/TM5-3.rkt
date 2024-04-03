(require (lib "turtles.ss" "graphics"))

(define (brocoli nGen lenAr)
  (if (> nGen 0) (begin
                (draw lenAr) ; branche principale
                (turn 45)
                (brocoli (- nGen 1) (/ (* 2 lenAr) 3))
                (turn -90)
                (brocoli (- nGen 1) (/ (* 2 lenAr) 3))
                (turn 45)
                (turn 180)
                (move lenAr)
                (turn -180)
                )
      )
  )


(turtles #t)
(turn 90)
(brocoli 10 100)