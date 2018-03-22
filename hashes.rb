#Ruby CLI Project Foundations
#Hashes

#1 Assign a new hash to a variable, snowy_owl
snowy_owl = {}

#2 How would you add the following to the snowy_owl hash? "type"=>"Bird", "bird_type" => "Owl", "diet"=>"Carnivore", "life_span"=>"10 years"
snowy_owl = {"type"=>"Bird", "bird_type" => "Owl", "diet"=>"Carnivore", "life_span"=>"10 years"}

#3 After adding the above values to the snowy_owl hash, how would I access the value, "Bird"?
snowy_owl["type"]

#4 What does snowy_owl.keys return?
["type", "bird_type", "diet", "life_span"]

#5 How would I access the key, "type"?
snowy_owl.keys[0]

