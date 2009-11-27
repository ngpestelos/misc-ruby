class MyClass
  def my_method; 'my_method()'; end
  alias :m :my_method
end

obj = MyClass.new
puts obj.my_method
puts obj.m
