;; the following lines help create and use 
;; our definitions for atom? and lat? commands in scheme 
;; built from primitives. You do not need to explain these lines.
;; Only explain the lines associated with questions 1-3
(define-module (ice-9 paradigms_d1))

(define-public (atom? x)
  (and (not (null? x))
       (not (pair? x))))

(define-public lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

(use-modules (ice-9 paradigms_d1))

;; YOUR NAME HERE

;; the list q
;; notice it has a ' in front of the list; that tells the interpreter to read
;; the list literally (e.g., as atoms, instead of functions)
(define q '(turkey (gravy) (stuffing potatoes ham) peas))

;; question 1
(display "question 1: ")
(display (atom? (car (cdr (cdr q)))))
(display "\n")
;; output:
;; (copy the output you saw here)
;;
;; explanation:
;; (use as many lines as necessary, just add more comments)
;;


;; question 2
(display "question 2: ")
(display (lat? (car (cdr (cdr q)))))
(display "\n")
;; output:
;;
;;
;; explanation:
;;
;;


;; question 3
(display "question 3: ")
(display (cond ((atom? (car q)) (car q)) (else '())))
(display "\n")
;; output:
;;
;;
;; explanation:
;;
;;

