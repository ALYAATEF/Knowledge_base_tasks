(deftemplate animal
  (slot type))

(defrule check_animal
  (animal (type ?animal-type&~dog))
  =>
  (printout t "Found animal: " ?animal-type crlf))

(deffacts animal-facts
  (animal (type cat))
  (animal (type dog))
  (animal (type bird))
  (animal (type elephant)))

(reset)
(run)
