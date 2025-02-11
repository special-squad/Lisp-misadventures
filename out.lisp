#!/usr/bin/env -S sbcl --script
(defun rectangle()
  (format t "Enter length: ")
  (terpri)
  (setq rect_length (read))
  (format t "Enter height: ")
  (terpri)
  (setq rect_height (read))
  (setq rect_Perimeter (* 2 (+ rect_length rect_height)))
  (setq rect_area (* rect_length rect_height))
  (format t "Length = ~F~%Perimeter = ~F ~%Area = ~F" rect_length rect_Perimeter rect_area))

(rectangle)
