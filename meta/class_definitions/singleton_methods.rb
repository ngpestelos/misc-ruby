str = "just a regular string"

def str.title?
  self.upcase == self
end

puts str.title?
puts str.methods.grep(/title?/)
puts str.singleton_methods
