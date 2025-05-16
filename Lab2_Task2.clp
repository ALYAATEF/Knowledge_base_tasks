CLIPS> (deftemplate rect
  (slot height (type NUMBER))
  (slot width (type NUMBER)))
CLIPS> (defrule perimeter
  ?r <- (rect (height ?h) (width ?w))
  =>
  (bind ?p (* 2 (+ ?h ?w)))
  (printout t "Rectangle with height " ?h " and width " ?w " has perimeter: " ?p crlf))
CLIPS> 
(deffacts rectangles
  (rect (height 5) (width 10))
  (rect (height 3) (width 7))
  (rect (height 8) (width 8)))
CLIPS> (reset)
CLIPS> (run)
Rectangle with height 8 and width 8 has perimeter: 32
Rectangle with height 3 and width 7 has perimeter: 20
Rectangle with height 5 and width 10 has perimeter: 30
CLIPS> 
