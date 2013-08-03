class A
  @@value = 1
  def A.value; @@value; end
end

puts "A (initial state) #{A.value}" # 1

class B < A; @@value = 2; end

puts "A (after B assignment) #{A.value}" # 2

class C < B; @@value = 3; end

puts "A (after C assignment) #{A.value}" # 3
