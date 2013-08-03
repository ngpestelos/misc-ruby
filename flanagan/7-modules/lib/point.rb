class Point
  @n = 0
  @totalX = 0
  @totalY = 0

  include Enumerable
  include Comparable
  attr_reader :x, :y

  def Point.sum(*points)
    x = y = 0
    points.each { |p| x += p.x; y += p.y }
    Point.new(x, y)
  end

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def self.new(x=0, y=0)
    @n += 1
    @totalX += x
    @totalY += y

    super
  end

  def self.report
    puts "Number of points created: #@n"
    puts "Average X coordinate: #{@totalX.to_f / @n}"
    puts "Average Y coordinate: #{@totalY.to_f / @n}"
  end

  class << self
    attr_accessor :n, :totalX, :totalY
  end

  ORIGIN = Point.new(0, 0)
  UNIT_X = Point.new(1, 0)
  UNIT_Y = Point.new(0, 1)
  NEGATIVE_UNIT_X = Point.new(-1, 0)
  NEGATIVE_UNIT_Y = Point.new(0, -1)

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

  def [](index)
    case index
    when 0, -2 then @x
    when 1, -1 then  @y
    when :x, "x" then  @x
    when :y, "y" then @y
    else nil
    end
  end

  def each
    yield @x
    yield @y
  end

  def ==(o)
    if o.is_a? Point
      @x == o.x && @y == o.y
    else
      false
    end
  end

  def <=>(o)
    return nil unless o.instance_of? Point
    @x**2 + @y**2 <=> o.x**2 + o.y**2 # compare magnitude
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

p = Point.new(1, 3)
puts "#{p[:x]}, #{p[1]}"

p = Point.new
puts "#{p.each { |x| print x }}"
puts "At the origin? #{p.all? { |x| x == 0 }}"

p1 = Point.new(1, 1)
p2 = Point.new(2, 3)
puts "p1 == p2 ? #{p1 == p2}"
puts "p1 == p1 ? #{p1 == p1}"

p,q = Point.new(1, 0), Point.new(0, 1)
puts "p == q ? #{p == q}"
puts "p < q ? #{p < q}"
puts "p > q ? #{p > q}"

puts "#{Point.sum(Point.new(1, 1), Point.new(2, 2), Point.new(3, 3))}"

puts Point::UNIT_X + Point::UNIT_Y

puts "\n"
puts Point.report
puts "#{Point.n}" # using the class << self trick
