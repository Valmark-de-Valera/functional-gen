(define (fact m)
(
 if (= m 0)
    1
    (* m (fact (- m 1)))))

(define iter 0)
(define (ssin x . m)
  (set! iter (+ iter 1))
(cond
  ((< 25 (car m)) 0)
    ((or (> x 0)(< x 1)) 
     (-
                  (- (/ (expt x (car m)) (fact (car m))) (ssin x (+ 2 (car m))))
                  (- (/ (expt (/ x 2)  (fact (car m))) (car m)) (ssin (/ x 2) (+ 2 (car m))))
                  ))
    ((or (> x -2)(= x -2)(< x 0)(= x 0))
     (-
                  (- (/ (expt (expt x 3) (car m)) (fact (car m))) (ssin (expt x 3) (+ 2 (car m))))
                  (- (/ (expt (+ x 0.125) (car m)) (fact (car m))) (ssin (+ x 0.125) (+ 2 (car m))))
                 ))
    )    
    )

(define (ssinMath x . m)
  (set! iter (+ iter 1))
(cond
  ((< 25 (car m)) 0)
    ((or (> x 1)(= x 1)) (- (sin x) (sin (/ x 2))))
    ((or (> x -2)(= x -2)(< x 0)(= x 0)) (- (sin (expt x 3)) (sin (+ x 0.125))))
    ))
(define (ssinCustom x . m)
  (set! iter (+ iter 1))
(cond
  ((< 25 (car m)) 0)
    ((or (> x 1)(= x 1)) (-
                  (- (/ (expt x (car m)) (fact (car m))) (ssin x (+ 2 (car m))))
                  (- (/ (expt (/ x 2)  (fact (car m))) (car m)) (ssin (/ x 2) (+ 2 (car m))))
                  ))
    ((or (> x -2)(= x -2)(< x 0)(= x 0)) (-
                  (- (/ (expt (expt x 3) (car m)) (fact (car m))) (ssin (expt x 3) (+ 2 (car m))))
                  (- (/ (expt (+ x 0.125) (car m)) (fact (car m))) (ssin (+ x 0.125) (+ 2 (car m))))
                 ))
    ))
;(display "Task 1 ")
;(display "Please enter x: ")
;(define x (read))
;(newline)

;(define m 1)

;(define r9 (ssinMath x m))
;(define r10 (ssinCustom x m))

;(display "sin math= ")(display r9)
;(newline)
;(display "sin custom= ")(display r10)
;(newline)

(display "Task 2 ")
(display "Please enter n: ")
(define n (read))
(define time 0)
(newline)

(define (count n i variants)
  (set! time (+ time 30))
  (cond
    ((= i 1) variants)
    (else (count n (- i 1) (* variants i)))
    )
  )

(display "Variants: ")(count n n 1)
(display "End after (seconds): ")(display time)