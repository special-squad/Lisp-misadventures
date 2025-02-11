#!/usr/bin/env -S sbcl --script
(require :uiop)
(load "~/.sbclrc")
(defun example ()
 (format t "hello ~a!~&" (uiop:getenv "USER"))
 (format t "another print command to test"))
(example)
