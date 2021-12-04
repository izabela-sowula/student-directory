@width = 60
def input_students
  puts "Please enter the name of the student (2 words) and cohort (1 word)".center(@width)
  # st = 0
  name = gets.chomp
  students = []
  while !name.empty?
    if !name.include?(' ') 
      p "you entered only either one word"
      input_students
    elsif name.count(' ') == 1
      p "you entered only 2 words"
      input_students
    elsif name.count(' ') == 2
      p "This is what you entered: "
      p name
      p "If correct - press Y, if not press N and type in correct name and cohort"
      yes_or_no = gets.chomp
      if yes_or_no == 'N'
        input_students
      else
        a = name.split(' ')
        st = students.count + 1
        puts "Please enter the hobby of the student".center(@width)
        hobby = gets.chomp
        puts "Please enter place of birth of the student".center(@width)
        pob = gets.chomp
        student =  {first_name: a[0], surname: a[1], cohort: a[2], hobby: hobby, pob: pob}
        students.push(student)
        # p students
        puts "To finish, just hit the return twice".center(@width)
        puts"Now we have #{students.count} students".center(@width)
        puts "Do you want to add more students? Press y if yes if not press n".center(@width)
        yes = gets.chomp
        while yes == 'y'
          input_students
      
        break if yes  == 'n'
        end 

      end  
  # return the array of students
    break
    end
  students
  end
  p students
  students
end    

def print_header
  puts "The students of Villains Academy".center(@width)
  puts "-----------------------------".center(@width)
end

def print_s(students)
  p "In print_s(students)"
   # students.each do |student|
     p students
    # puts "#{student[:name]} (#{student[:cohort]} cohort)".center(@width)
   #end
end

def print_footer(students)
  puts "Overall we have X students" #{students.count} great students"
end

def search_by_first_letter(students)
  puts "Student names beginning with:".center(@width)   
  letter = gets.chomp
    students.each do |student|
      if student[:name].start_with?(letter)
        puts "#{student[:name]}, (#{student[:cohort]}".center(@width)
      else
      end  
    end
    puts
end



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
print_s(students)
print_footer(students)

# search_by_first_letter(students)
# search_more_than_12(students)