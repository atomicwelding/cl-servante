(defpackage #:cl-servante.string
  (:use #:cl)
  (:export #:starts-with-p
	   #:slice))


(in-package #:cl-servante.string)

(defun starts-with-p (s pattern &optional (test #'char=))
  (let ((pos (search pattern s :test test)))
    (and pos (= pos 0))))


(defun slice (start end s)
  (subseq s start (min (length s) end)))
