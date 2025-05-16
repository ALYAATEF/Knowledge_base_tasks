CLIPS> (deftemplate person
  (slot name)
  (slot hair-color))
CLIPS> 
(defrule check_color
  (person (hair-color ?color&~black&~brown))
  =>
  (printout t "Found special hair color: " ?color crlf))
CLIPS> (deffacts people
  (person (name "Alice") (hair-color "black"))    
  (person (name "Bob") (hair-color "brown"))     
  (person (name "Charlie") (hair-color "blonde"))
  (person (name "Dana") (hair-color "red"))
  (person (name "Eve") (hair-color "gray")))
CLIPS> (reset)
CLIPS> (run)
Found special hair color: gray
Found special hair color: red
Found special hair color: blonde
Found special hair color: brown
Found special hair color: black
CLIPS> 
