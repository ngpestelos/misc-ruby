class C
  def method_missing(name, *args)
    "a Ghost Method"
  end
end

obj = C.new
puts obj.to_s

class C
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /method_missing|respond_to?|^__/
  end
end

puts obj.to_s
