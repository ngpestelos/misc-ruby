class Point
  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def to_s
    "{#@x, #@y}"
  end
end

p = Point.new
puts p
puts p.class
puts p.is_a? Point

p = Point.new(1, 1)
puts p
puts p.inspect
