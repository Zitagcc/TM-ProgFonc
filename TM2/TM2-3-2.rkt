(define (lireChaine)
  (symbol->string (read)))

;(lireChaine)

; ------------

;(define chaine (lireChaine))

; Return the first character of a string
(define (frstCh chaine)
  (string-ref chaine 0))

;(frstCh chaine)

; ---------------------
; return the last character of a string

(define (lastCh chaine)
  (string-ref chaine (- (string-length chaine) 1)))

;(lastCh chaine)

; ---------------------
; return a string without its last character

(define (debut ch)
  (substring ch 0 (- (string-length ch) 1)))

; ---------------------
; return a string without its fist character
(define (fin ch)
  (substring ch 1 (string-length ch)))

(define (carChaine c ch)
  ; returns a string formed from the concatenation of
  ; a character at the begining followed by the characters from ch
  (string-append (string c) ch))

(define (chaineCar ch c)
  ; renvoie une chaîne composée de caractères de ch et de c
  ; chaîne, caractère -> chaîne non vide
  (string-append ch (string c)))

(define (chaineCar ch c)
  (string-append ch (string c)))

; ------------------

(define (present verbe)
  (let ((deb (debut verbe)))
    (begin
      (display "je ") (display deb)
      (newline)
      (display "tu ") (display (chaineCar deb #\s))
      (newline)
      (display "il/elle ") (display deb)
      (newline)
      (display "nous ") (display (string-append (debut deb) "ons"))
      (newline)
      (display "vous ") (display (chaineCar deb #\z))
      (newline)
      (display "ils/elles ") (display (string-append deb "nt"))
      (newline))))


