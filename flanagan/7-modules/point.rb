class Point
  def initialize(x=0, y=0)
    @x, @y = x, y
  end
end

p = Point.new
puts p.class
puts p.is_a? Point

puts Point.new(1, 1).inspect
