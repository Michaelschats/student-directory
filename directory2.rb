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
  puts "The students of Villains".center(45)
  puts "-------------".center(33)
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(45)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".rjust(38)
end
#nothing happensuntil we call the methods
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
