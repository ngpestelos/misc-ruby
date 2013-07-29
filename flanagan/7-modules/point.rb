class Point
  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def to_s
    "{#@x, #@y}"
  end

  def x
    @x
  end

  def y
    @y
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
  def initialize(x, y); @x, @y = x, y; end

  def x; @x; end
  def y; @y; end

  def x=(value)
    @x = value
  end

  def y=(value)
    @y = value
  end
end

p = MutablePoint.new(1, 1)
p.x = 0
p.y = 0
puts p.inspect
