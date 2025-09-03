(defpackage #:cl-servante.string
  (:use #:cl))


(in-package #:cl-servante.string)

(defun starts-with-p (s pattern &optional (test #'char=))
  (let ((pos (search pattern s :test test)))
    (and pos (= pos 0))))
