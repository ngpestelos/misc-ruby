class Point
  attr_reader :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def to_s
    "{#@x, #@y}"
  end

  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end

  def -@
    Point.new(-@x, -@y)
  end

  def *(scalar)
    Point.new(@x * scalar, @y * scalar)
  end
end

p = Point.new
puts p
puts p.class
puts p.is_a? Point

p = Point.new(1, 1)
puts p
puts p.inspect

p = Point.new(2, 2)
puts "{#{p.x}, #{p.y}}"

class MutablePoint
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    self.x, self.y = x, y
  end
end

p = MutablePoint.new(1, 1)
p.x = 3
p.y = 3
puts p.inspect

p1 = Point.new(1, 1)
p2 = Point.new(1, 1)
puts (p1 + p2).inspect
