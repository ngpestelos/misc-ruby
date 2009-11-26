class C
  def initialize
    @x = "a private instance variable"
  end
end

obj = C.new
puts obj.instance_eval { @x }
