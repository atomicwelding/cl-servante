(in-package #:cl-servante)


(defun average (&rest numbers)
  (/ (reduce #'+ numbers) (length numbers)))

(defun average-list (numbers)
  (/ (reduce #'+ numbers) (length numbers)))

(defun clamp (number min max)
  (max min (min number max)))
