(deftemplate number
    (slot value))

(defrule pos_int
    (number (value ?n))
    (test (and (integerp ?n) (> ?n 0)))
    =>
    (printout t "The number " ?n " is a positive integer" crlf))

(deffacts example-numbers
    (number (value 7))
    (number (value -2))
    (number (value 3.14))
    (number (value 0))
    (number (value 12)))

(reset)
(run)
