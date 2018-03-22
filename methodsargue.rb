#Ruby CLI Project Foundations
#1. Break the program into separate methods

name = "Heather Haas"
age = "37"
age2020 = "40"

name = ""

#One called “greet_user” that prints a greeting
def greet_user
    puts "Hi, What's your name?"
    name = gets
    puts "Hey #{name}!"
end

#One called “age_in_twenty_twenty” which takes in an age and returns how old the person will be in 2020
def age_in_twenty_twenty
    puts "What's your age?"
    age = gets.chomp
    answer = age.to_i + 2
    puts "You will be #{answer}"
end

#One called “hometown_is_long?” that takes in a string and returns “true” if the string is longer than 9 characters, false otherwise
def hometown_is_long?
    puts "Please enter your hometown"
    input = gets
        if input.length <= 9
            puts "true"
        else puts "false"
        end
end


#One called “respond_to_hometown” that takes in the hometown and returns the correct greeting as described above
def respond_to_hometown
    puts "Please enter your hometown"
    input = gets
        if input.length <= 9
            puts "I heard that is a nice place"
            else
            puts "Wow, that’s a long hometown!"
        end
end
