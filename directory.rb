def input_students
  puts "Please enter the names, hobbies, place of Birth and Height of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  hobbies = gets.chomp
  birth_place = gets.chomp
  height = gets.chomp.to_i
  # while the name is not empty, repeat this code
  while !name.empty? && hobbies.empty? && birth_place.empty? && height.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: hobbies, birth_Place: birth_place, height: height}
    puts "Now we have #{students.count} students"
    # get another name from user
    name = gets.chomp
    hobbies = gets.chomp
    birth_place = gets.chomp
    height = gets.chomp.to_i
  end
  # return array of input_students
  students
end

def print_header
  puts "The students of Villains"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, (#{student[:cohort]} cohort), #{student[:hobbies]}, #{student[:birth_place]}, #{student[height:]}"
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
