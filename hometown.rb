#Ruby CLI Project Foundations
#Control Flow
#1 Create a program that asks the user the name of their hometown. If the hometown has more than 9 characters in it, print “Wow, that’s a long hometown!”. Otherwise, print, “I heard that is a nice place”

puts "Please enter your hometown"
input = gets
if input.length <= 9
    puts "I heard that is a nice place"
    else
    puts "Wow, that’s a long hometown!"
end

