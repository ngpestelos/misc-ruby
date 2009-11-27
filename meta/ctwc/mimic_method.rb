def BaseClass(name)
  name == "string" ? String : Object
end

# a method that looks like a class
class C < BaseClass "string"
  attr_accessor :an_attribute # method that looks like a keyword
end

obj = C.new
obj.an_attribute = 1
puts obj.class
