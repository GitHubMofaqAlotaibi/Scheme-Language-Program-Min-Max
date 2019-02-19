#lang racket

;; Mofaq Alotaibi_April 24, 2017_524-02
;; implementation of program (minimum and maximum)
;; of a list of numbers, and returns
;; the min and max
;; MAX prefers the
;; MIN prefers the
;;__________________________________________________________________

(define (min lst)
    (cond ((null? (cdr lst)) (car lst))
          ((< (car lst) (min (cdr lst))) (car lst))
          (else (min (cdr lst)))) )

(define (max lst)
    (cond ((null? (cdr lst)) (car lst))
          ((> (car lst) (max (cdr lst))) (car lst))
          (else (max (cdr lst)))) )
(define (minmax lst) (cons (min lst) (cons (max lst) '())))

;;__________________________________________________________________