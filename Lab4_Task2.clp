         CLIPS (6.4.2 1/14/25)
CLIPS> (deftemplate person
  (multislot name (type SYMBOL STRING) (cardinality 2 4))
  (slot age (type INTEGER) (range 20 25)))

CLIPS> (assert (person (name John Doe) (age 22)))       
(assert (person (name "Jane" "Smith") (age 20)))    
<Fact-1>

CLIPS> (assert (person (name Bob) (age 22)))            
(assert (person (name a b c d e) (age 21)))       
[CSTRNCHK1] Literal slot values found in the 'assert' command does not satisfy the cardinality restrictions for slot 'name'.
CLIPS> 
