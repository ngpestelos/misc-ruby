class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  puts self
  puts @v
end

v = 2
obj.instance_eval { @v = v; puts @v }
obj.instance_eval { puts @v }
