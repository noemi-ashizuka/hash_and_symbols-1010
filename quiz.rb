# Q1 - What’s a variable? What’s the point of using variables? Give an example.
# A variable is place to store a value to use later.
# A variable is a container to store data that you can reuse later
name = "Paulette"

# Q2 - Precisely describe the following line of code using the correct vocabulary.

age = 18 # The variable age is set/assigned/declared to the integer 18

# Q3 - What’s a method? What’s the point of defining methods?
# A method is block of code which takes arguments and returns a dynamic value.
# The point of using methods is to be able to reuse and manipulate code.

# A method is a portion of code that can be called more than once 

# Q4 - Precisely describe what happens at each line using good vocabulary. Write a ruby comment next to the line you’re explaining using the #.

# Code example given to the student:
def multiply(x, y) # defined a method called 'multiply' with 2 parameters x and y
  return x * y    # return the value of the operation x * y
end          # closes the method      

puts multiply(5, 8) # calling the method 'multiply' an passing 5 and 8 as arguments

# Q5 - What’s the keyword if ? Give us an example of if statements, using an age variable storing a student’s age for instance.
# if is a conditional statement
# TODO: write some code with `if`
age = gets.chomp

if age >= 6
  puts 'Time for school kiddo!' 
else
  puts 'No school yet yay!'
end


# Q6 - Complete the following code to compute the exact average of students grades (using each ).

# Code example given to the student:
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
grades_total = 0

grades.each do |grade|
  grades_total += grade
end
average = grades_total.to_f / grades.length
average = grades_total.fdiv(grades.length)

# Q7 - Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).

def capitalize_name(first_name, last_name)
  return "#{first_name.capitalize} #{last_name.capitalize}"
  # first_name.capitalize + " " + last_name.capitalize
end

# Q8 - What’s the difference between concatenation and interpolation? Give an example.
# see above

# CRUD Array
# Q9 - Translate each line of pseudo-code into ruby.  CRUD Array
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
fruits << "apple"
fruits.push("apple")
# Replace "watermelon" by "pear"
fruits[2] = "pear"

# Delete "orange"
fruits.delete('orange')
fruits.delete_at(3)
fruits.delete_at(-1)


# Q10 - Translate each line of pseudo-code into ruby. (HASH Crud)

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name] # => "Paris"

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"

# Update the population to 2000001
city[:population] = 2_000_001

# What will the following code return?
city[:mayor] # nil



# Q11 - Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?

# Code example given to the student:
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# p students.to_h

# TODO: Convert the array of arrays into an array of hashes.

students.map do |student|
  {
    name: student.first,
    age: student.last
  }
end
