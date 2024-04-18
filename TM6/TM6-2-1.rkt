; 2.1
(define (rangsPairs l)
  (if (or (null? l) (null? (cdr l))) '()
      (cons (cadr l) (rangsPairs (cddr l)))))
; 2.2

(define (moyenneListe1 l)
  (/ (sommeListe l) (length l)))

(define (sommeListe l)
  (if (null? l) 0
      (+ (car l) (sommeListe (cdr l)))))
; ---
(define (moyennePonderee l)
  (moyPond (cdr l) (* (caar l) (cadar l)) (cadar l)))

(define (moyPond l acc sommePoids)
  (if (null? l) (/ acc sommePoids)
      (moyPond (cdr l) (+ (* (caar l) (cadar l)) acc) (+ (cadar l) sommePoids))))
; ---
(define l '(2 4 3 6 7 1 9))
;(rangsPairs l)
;(moyenneListe1 l)
(moyennePonderee '((1 2) (3 4) (5 6)))
