class C; end

module M
  def my_method
    'a class method'
  end
end

class << C
  include M
end

puts C.my_method
