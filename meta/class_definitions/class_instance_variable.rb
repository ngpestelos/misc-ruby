class C
  @my_class_instance_variable = "some value"

  def self.class_attribute
    @my_class_instance_variable
  end
end

puts C.class_attribute
