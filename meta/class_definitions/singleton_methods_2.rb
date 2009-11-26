obj = "abc"

class << obj
  def my_singleton_method
    "x"
  end
end

puts obj.my_singleton_method
