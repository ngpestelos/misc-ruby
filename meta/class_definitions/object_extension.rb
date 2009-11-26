obj = Object.new

module M
  def my_method
    'a singleton method'
  end
end

class << obj
  include M
end

puts obj.my_method
