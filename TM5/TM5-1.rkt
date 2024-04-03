; TM5
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




(turtles #t)

(traceCote 4 300)

  

  
  