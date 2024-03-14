; 2.2 Hexagone régulier

(require (lib "turtles.ss" "graphics"))

(define (hexagone len angl nbrcote)
  
  (cond ((= nbrcote 1)
         (draw len)
         )
        ((> nbrcote 1)
         (draw len)
         (turn angl)
         (hexagone len angl (- nbrcote 1)))))


(define len 100)
(define nbrcote 6)
(define angl (/ 360 nbrcote))


(turtles #t)
(hexagone len angl nbrcote)