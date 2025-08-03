(defpackage #:cl-servante.gromacs
  (:nicknames #:gromacs #:gmx)
  (:use #:cl)
  (:export #:ndx-not
	   #:ndx-and
	   #:ndx-or
	   #:ndx-name
	   #:ndx-save-and-quit
	   #:ndx-keep
	   #:ndx-splitres))



(in-package #:cl-servante.gromacs)



;; ndx
(defun ndx-not (nr &optional (stream nil))
  (format stream "! ~a" nr))

(defun ndx-and (list-nr &optional (stream nil))
  (format stream "~{~a~^ | ~}" list-nr))

(defun ndx-or (list-nr &optional (stream nil))
  (format stream "~{~a~^ & ~}" list-nr))

(defun ndx-name (nr name &optional (stream nil))
  (format stream "name ~a ~a" nr name))

(defun ndx-del (nr &optional (stream nil))
  (format stream "del ~a" nr))

(defun ndx-keep (nr &optional (stream nil))
  (format stream "keep ~a" nr))

(defun ndx-save-and-quit (&optional (stream nil))
  (format stream "q"))

(defun ndx-splitres (nr &optional (stream nil))
  (format stream "splitres ~a" nr))
