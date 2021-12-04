#EX 6: cResearch how the method center() of the String class works. 
# Use it in your code to make the output beautifully aligned.

@width = 60
def input_students
  puts "Please enter the student's name, country of birth, height and hobbies: ".center(@width)
  puts "To finish, just hit return five times.".center(@width)
  #create an empty array
  students = []
  print "Name: ".center(@width)
  name = gets.chomp
  print "Country of Birth: ".center(@width)
  country_of_birth = gets.chomp
  print "Height (cm): ".center(@width)
  height = gets.chomp
  print "Hobbies: ".center(@width)
  hobbies = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november, country_of_birth: country_of_birth, height: height, hobbies: hobbies}
    puts "Now we have #{students.count} students".center(@width)
    #get another name from the user
    print "Name: ".center(@width)
    name = gets.chomp
    print "Country of Birth: ".center(@width)
    country_of_birth = gets.chomp
    print "Height (cm): ".center(@width)
    height = gets.chomp
    print "Hobbies: ".center(@width)
    hobbies = gets.chomp
  end
  #return the array of students
  students
end

def print_header
puts "The students of Villains Academy".center(@width)
puts "-------------"
end

def prints(students)
students.each_with_index do |student, index|
    new_index = index + 1
  puts "Name: #{new_index}. #{student[:name]}, (#{student[:cohort]} cohort), Country of Birth: #{student[:country_of_birth]}, Height: #{student[:height]}, Hobbies: #{student[:hobbies]}".center(@width)
end
end


def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(@width)
end
#nothing happens until we call the methods
students = input_students
print_header
prints(students)
print_footer(students)