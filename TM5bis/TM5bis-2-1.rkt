;TM5 Bis - Exercice 2

(require (lib "turtles.ss" "graphics"))

(define (brancheFlocon nGen lenAr a)
  (begin
    (draw lenAr)
    (if (> nGen 0)
        (begin
          (turn a)
          (draw lenAr)
          (move (- lenAr))
          (turn (- a))
          (brancheFlocon (- nGen 1) (* 0.8 lenAr) a)
          (turn (- a))
          (draw lenAr)
          (move (- lenAr))
          (turn a)))
    (move (- lenAr))))

(define (traceBranches nGen lenAr nb a)
  (if (> nb 0)
      (begin
      (brancheFlocon nGen lenAr a)
      (turn a)
      (traceBranches nGen lenAr (- nb 1) a))))

(define (flocon nGen lenAr nb)
  (traceBranches nGen lenAr nb (/ 360 nb)))


(turtles #t)
(turn 90)
(define lenAr 50)
(define nb 6)
(define a (/ 360 nb))

;(brancheFlocon 3 lenAr a)
(flocon 2 lenAr a)

  


