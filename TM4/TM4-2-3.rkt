(require (lib "turtles.ss" "graphics"))

(define (polyReg nbrcote len)
  (traceCotesPolyReg nbrcote len (/ 360 nbrcote)))

(define (traceCotesPolyReg nbrcote len angl)
  (if (> nbrcote 0)
      (begin
        (draw len)
        (turn angl)
        (traceCotesPolyReg (- nbrcote 1) len angl))))
        
         

(define len 100)
(define angl 30)
(define nbrcote (/ 360 angl))
(display nbrcote)
(turtles #t)
(polyReg nbrcote len)

  