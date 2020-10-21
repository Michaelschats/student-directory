def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from user
    name = gets.chomp
  end
  # return array of input_students
  students
end

def print_header
  puts "The students of Villains"
  puts "-------------"
end

def print(students)
  copy_of_students = students.map(&:clone)
  student_number = 1
  while !copy_of_students.empty?
    if copy_of_students[0][:name].length < 12
      puts "#{student_number}. #{copy_of_students[0][:name]} (#{copy_of_students[0][:cohort]} cohort)"
      student_number += 1
      copy_of_students.delete_at(0)
    else
      copy_of_students.delete_at(0)
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
