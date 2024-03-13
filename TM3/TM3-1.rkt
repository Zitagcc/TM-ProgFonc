; if :
(define (f x)
  (if (= x 1) "un"
      (if (= x 4) "quatre"
          (if (= x 11) "Onze"
      "autre"))))

(f 12)