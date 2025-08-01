(defpackage #:cl-servante.math
  (:nicknames #:math)
  (:use #:cl)
  (:export #:iota
	   #:factorial
	   #:average
	   #:average-list
	   #:clamp))


(in-package #:cl-servante.math)


(defun iota (n)
  (loop for i from 1 to n
	collect i))

(defun factorial (n)
  (if (zerop n)
      1
      (reduce #'* (iota n))))

(defun average (&rest numbers)
  (/ (reduce #'+ numbers) (length numbers)))

(defun average-list (numbers)
  (/ (reduce #'+ numbers) (length numbers)))

(defun clamp (number min max)
  (max min (min number max)))
