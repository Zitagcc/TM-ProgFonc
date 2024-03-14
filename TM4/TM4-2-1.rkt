; 2.1 Carré

(require (lib "turtles.ss" "graphics"))

(define (carre len angl)
  (turtles #t)
  (draw len)
  ;
  (turn angl)
  (draw len)
  ;
  (turn angl)
  (draw len)
  ;
  (turn angl)
  (draw len)
  
  )

(define len 200)
(define angl 90)
(carre len angl)
