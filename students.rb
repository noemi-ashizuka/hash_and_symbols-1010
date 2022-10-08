students = ['Maxwell', 'Tim', 'Danielle', 'Jeremy', 'Yvonne']
ages = [12, 10, 11, 12]

students.each do |student|
  puts "#{student} is #{ages[students.index(student)]} years old"
end

# C: students << "Radek"
# R: students[1] => 'Tim'
# U: students[1] = 'Sam'
# D: students.delete('Jeremy') OR students.delete_at(1)
