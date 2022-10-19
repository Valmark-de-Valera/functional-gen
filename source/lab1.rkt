(define iter 0)
(define (factorial n)
  (set! iter (+ iter 1))
  (if (= n 0)
    1
    (* n (factorial (- n 1)))))


(define (task1 n k)
  (/ (factorial n) (* (factorial k) (- n k))))

(define (task2 n ni i ei)
  (cond
    ((or (and (= n ni) (= n i)) (= ei n)) (newline))
    ((not (= i ni)) (and (display ni) (task2 n ni (+ i 1) (+ ei 1))))
    (else (task2 n (+ ni 1) 0 ei))
    )
  )


(display "Please product quontity (m): ")
(define m (read))
(newline)

(display "Please enter n: ")
(define n (read))
(newline)

(display "Please enter k: ")
(define k (read))
(newline)

(display "Count of variants:")(task1 n k)
(display "Count of fail tickets: ")(- n m)
(display "Count of win tickets: ")(display m)
(newline)

(display "Recursion level (with 3 factrial call) is ")(display iter)
(newline)

(display "(Task2) Please enter n: ")
(set! n (read))
(newline)

(task2 n 1 0 0)