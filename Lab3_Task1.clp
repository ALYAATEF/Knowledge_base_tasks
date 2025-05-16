CLIPS> (deftemplate animal
  (slot type))
CLIPS> (defrule check_animal
  (animal (type ?animal-type&~dog&~cat))
  =>
  (printout t "Found animal: " ?animal-type crlf))

CLIPS> (deffacts animal-facts
  (animal (type cat))     
  (animal (type dog))    
  (animal (type bird))
  (animal (type turtle))
  (animal (type elephant)))
CLIPS> (reset)
CLIPS> (run)
Found animal: elephant
Found animal: turtle
Found animal: bird
CLIPS> 
