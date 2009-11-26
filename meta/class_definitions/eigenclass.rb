class Object
  def eigenclass
    class << self; self; end
  end
end

puts "abc".eigenclass
