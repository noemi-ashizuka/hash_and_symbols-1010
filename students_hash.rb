students = {
  # key => value
  'Maxwell' => {'age' => 12, 'phone number' => '309458593'},
  'Danielle' => 10,
  'James' => 11,
  'Yvonne' => 12
}
                  # key, value
students.each_with_index do |(name, age), index|
  puts "#{index + 1} - #{name} is #{age} years old"
end

p "#{students['Maxwell']['phone number']}"

p students.key?('Maxwell')
p students.key?('Bob')
p students.keys
p students.values


p students.count
p students.size
p students.length



# CREATE
# hash_name[new_key] = new_value
p students['Natasha'] = 13
p students

# READ
# hash_name[key] it reads the value
p students['James'] # => 11
p students['Junsuke']

# UPDATE
p students['James'] = 12
p students

# # DELETE
students.delete('James')
p students

