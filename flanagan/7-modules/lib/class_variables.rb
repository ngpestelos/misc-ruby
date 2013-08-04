class A
  @@value = 1
  @instance_value = 'a'
  def A.value; @@value; end
  def A.instance_value; @instance_value; end
end

puts "A initial state: #{A.value} #{A.instance_value}" # 1 a

# Subclass mutates its superclass' class variable,
# but not the class instance variable

class B < A; @@value = 2; @instance_value = 'b'; end
puts "A after B: #{A.value} #{A.instance_value}" # 2 a
puts "B: #{B.value} #{B.instance_value}" # 2 b

# Subclass yet again mutates its ancestor's class variable,
# but not the class instance variable

class C < B; @@value = 3; @instance_value = 'c'; end
puts "A after C: #{A.value} #{A.instance_value}" # 3 a
puts "C: #{C.value} #{C.instance_value}" # 3 c
