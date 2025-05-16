CLIPS> (deftemplate number
  (slot value (type INTEGER)))
CLIPS> (defrule Odd_number
  (number (value ?n&:(oddp ?n)))
  =>
  (printout t "The number " ?n " is odd" crlf))
CLIPS> (deffacts example-numbers
  (number (value 3))    
  (number (value 4))   
  (number (value 7))   
  (number (value 0))    
  (number (value 11)))  
CLIPS> (reset)
CLIPS> (run)
The number 11 is odd
The number 7 is odd
The number 3 is odd
CLIPS> 
