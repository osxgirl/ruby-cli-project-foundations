#Ruby CLI Project Foundations
#Classes, Instances, and Object Instantiation (+ some method scope)
#1. Create a Baby class
    #2. Create a new instance of the Baby class
    #What is the process of creating a new instance called? instantiation
    #3. Assign that instance to a local variable
#4. Create an instance method writer for a name attribute
#5. Create an instance method reader for a name attribute
    #6. What is another way to create instance reader and writer methods in Ruby?
#7. Create an instance method, “cry”, where it “puts’s” “Waaaaaa!”
    #8. Say if I create a local variable `wah` and assign it the string “Waaa!” - what is the scope of that local variable?
    #9. If I interpolate that local variable like so (`puts #{wah}`), what would you expect to happen?
#10.Say that you want the cry method to be called when new instances of the Baby class are instantiated. How would you do this using the initialize method?
#11. And, wait a second, once a baby is born, do we typically ever change the baby’s name? No!
    #12. How would you change the code to reflect this reality?


class Baby
    attr_accessor :name
    @@all = []
   
    def initialize(name = nil)
        @name = name
        @@all << self
        cry
    end
    
    def self.all
        @@all
    end

    def name=(new_name)
        @name = new_name
    end
    
    def cry
        wah = "Waaaaaaaa!"
        puts "😢 #{wah}"
    end
    
end


Baby.new
Mackenzie = Baby.new
Mackenzie.name = "Mackenzie"
Mackenzie.cry





#Classes, Scope, and Self

#In your text editor, create a Dog class in the same file as the Baby class (This is for illustration. Typically, classes would live in separate files - dog.rb and baby.rb)
    #Create an array and assign it to a class variable, @@all
    #Create attr_reader for a name attribute
#Create an initialize method and enable it to
#Take in a name argument and assign it to @name
#Shovel the new instance into the @@all array
#Go to irb
#Create a lot of Dog instances
#Try to read the @@all variable - we can’t do it. How would you enable the @@all variable to be exposed?
#Write a class method, `self.all`
#What does `self` represent here?
#Do the same for the Baby class
#Can any of the class variables there be seen by the Dog class?
#Yes
#How would you enable the Dog class to “see” the value of @@all in the Baby class?
#inheritance — Dog < Baby


class Dog
    attr_accessor :name
    @@all = []
    
    def initialize(name = nil)
        @name = name
        @@all << self
        bark
    end
    
    def self.all
        @@all
    end

    def name=(new_name)
        @name = new_name
    end

    def bark
        puts "RUFF!🐶"
    end
    
end


Dog.new
Apple = Dog.new
Apple.name = "Apple"
Apple.name
Apple.bark
Dog.all
Apple == Benji #--> false
