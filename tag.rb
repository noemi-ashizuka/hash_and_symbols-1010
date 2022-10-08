def tag(tag_name, content, attr = {})
  # iterate over the attr hash
  attr_string = attr.map do |key, val|
    " #{key}='#{val}' "
  end.join
  # use the attr to create a string href="http://lewagon.org" key=value
  # join the array
  "<#{tag_name}#{attr_string}>#{content}</#{tag_name}>"
end


p tag("h1", "Hello world")
# => <h1>Hello world</h1>

p tag("h1", "Hello world", { class: "bold" })
# # => <h1 class='bold'>Hello world</h1>

p tag("a", "Le Wagon",   href: "http://lewagon.org", class: "btn"  )
# # => <a href='http://lewagon.org' class='btn'>Le Wagon</a>

# create(name: "Tanner", age: 8)