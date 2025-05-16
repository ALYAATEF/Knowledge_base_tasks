(deftemplate animal
  (slot type))

(defrule check_animal
  (animal (type ?animal-type&:(or (eq ?animal-type duck) (eq ?animal-type turtle))))
  =>
  (printout t "Found special animal: " ?animal-type crlf))

(deffacts animal-facts
  (animal (type cat))
  (animal (type dog))
  (animal (type duck))
  (animal (type turtle))
  (animal (type bird)))

(reset)
(run)
