class C
  def method_missing(name, *args)
    name.to_s.reverse
  end
end

obj = C.new
puts obj.my_ghost_method
