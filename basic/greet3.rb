# Programming Ruby, p. 13

def say_goodnight(name)
  result = "Good night, #{name.capitalize}"
  return result
end

# Time for bed
puts say_goodnight("uncle")
