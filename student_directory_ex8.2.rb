# only print the students whose name begins with a specific letter.

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

def search_by_first_letter(students)
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


# nothing happens until we call the methods
students = input_students
print_header
# print(students)
print_with_letter(students)
search_by_first_letter(students)
print_footer(students)