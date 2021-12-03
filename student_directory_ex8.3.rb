# let's put all students into an array
=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
=end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit the return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty?
    students << {name: name, cohort: :november}
    puts"Now we have #{students.count} students"
    name = gets.chomp
  end
  # return the array of students
  students
end    

def print_header
  puts "The students of Villains Academy"
  puts "-----------------------------"
end

def print(students)
  
  students.each_with_index do |student|
    p "#{student[:name]} (#{student[:cohort]} cohort)"
  end

  # above replaces below way of printing content of the array 
  # using each_with_index method
  # students.each do |student|
  #   puts "#{student[:name]} (#{student[:cohort]} cohort)"
  # end
end

def print_footer(students)
  puts "Overall we have #{students.count} great students"
end

def print_with_letter(students)
  puts "Give me a lettter"
  letter = gets.chomp
  ww = 0
  p students[:name]
  while students.length < ww
   p letter
   puts students[:name]
    if students[:name].starts_with?(letter) #? match letter
      puts "#{student[:name]}, (#{student[:cohort]} cohort)"
    end
   ww = ww + 1  
  end

end


def search_by_first_letter(students)
  puts "Student names beginning with:".center(@width)   
  letter = gets.chomp
    students.each do |student|
      if student[:name].start_with?(letter)
        puts "#{student[:name]}, (#{student[:cohort]} cohort)".center(@width)
      else
      end  
    end
    puts
end

# to only print the students whose name is shorter than 12 characters.
def search_more_than_12(students)
    students.each do |student|
          
      if student[:name].length <12
        print "This student name is less than 12 chr long"  
        puts "#{student[:name]}, (#{student[:cohort]} cohort)"
      else
      end  
    end
    puts
end

# nothing happens until we call the methods
students = input_students
print_header
# print(students)
# search_more_than_12(students)
print_with_letter(students)
search_by_first_letter(students)
print_footer(students)

