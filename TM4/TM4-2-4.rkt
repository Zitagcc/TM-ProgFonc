; Corrigé TM4 2-4
(require (lib "turtles.ss" "graphics"))

  
(define (polyReg nbrcote len)
  (traceCotesPolyReg nbrcote len (/ 360 nbrcote)))

(define (traceCotesPolyReg nbrcote len angl)
  (if (> nbrcote 0)
      (begin
        (draw len)
        (turn angl)
        (traceCotesPolyReg (- nbrcote 1) len angl))))

; 2.4
(define (polyRegCentre nbrcote len)
  (let* ((alpha (- pi (/ (* 2 pi) nbrcote))) 
         (demiAlpha (/ alpha 2)) 
         (rayon (/ len (* 2 (cos demiAlpha))))) ; le rayon du cercle cirsconscrit
    (begin
      (turn/radians demiAlpha)
      (move (- rayon))
      (turn/radians (- demiAlpha))
      (polyReg nbrcote len)
      (turn/radians demiAlpha)
      (move rayon)
      (turn/radians (- demiAlpha)))))


(define len 200)
(define nbrcote 6)

(turtles #t)
(polyRegCentre nbrcote len)
