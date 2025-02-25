#!/usr/bin/env -S sbcl --script
(load "~/.sbclrc")
(defun indifference()
  (defvar good1)
  (defvar good2)
  (defvar price1)
  (defvar price2)
  (defvar budget)
  (defvar utility)
  (format t "When it comes to goods, in the neoclassical school of economics you can model which goods to buy using indifference curve, which measures at what point you are indifferent between 2 goods.")
  (terpri)
  (format t "Although making a whole curve is outside the scope of this , I can use budget to maximize utility at that budget between 2 goods.")
  (terpri)
  (format t "So give the names of the two goods you wish to compare?")
  (terpri)
  (setq good1 (read))
  (setq good2 (read))
  (format t "Now give the prices of the goods respectively")
  (terpri)
  (setq price1 (read))
  (setq price2 (read))
  (format t "We also need a total budget for these 2 goods")
  (terpri)
  (setq budget (read))
  (format t "How much do you value the first good relative to the second good?")
  (terpri)
  (setq utility (read))
  (setq final1 (/ (* utility budget) (* (+ utility 1) price1)))
  (setq final2 (/ budget (* (+ utility 1) price2)))
  (format t "After running the math, the ammount of ~a you should buy is ~a and ~a of ~a ." good1 final1 final2 good2)
  (terpri)
  (format t "To model as an equation, it is modeled using (utility * ln(~a)) + ln(~a) = U = ~a ." final1 final2 (+ (* utility (log final1)) (log final2)))
  (terpri)
  (format t "For the actual curve, it's ~a * ln(x) + ln(y) = ~a ." utility (+ (* utility (log final1)) (log final2)))
  (terpri)
  (format t "For a tangent budget line, the model is ~a - ( ~a * x) / ~a" (/ budget price2 ) price1 price2)
  (terpri)
  (format t "To finish with a disclaimer, the comparisons this program can do are only cardinal, which is wrong, they are ordinal but easier to make. Also values are not rounded because I'm lazy and these values can work for crypto"))
;This is a slightly better version of my C++ indifference program.
