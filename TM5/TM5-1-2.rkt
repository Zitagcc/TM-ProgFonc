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
(define lenAr 300) ;lenght of edge

; start to draw the fraction 
(turtles #t)
(flocon nGen lenAr)