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


(turtles #t)

(traceCote 1 300)



  
  