Struct.new("Point", :x, :y)
Point = Struct.new(:x, :y)

p = Point.new(1, 2)
puts "#{p.x} #{p.y}"

class Point
  def add!(other)
    self.x += other.x
    self.y += other.y
    self
  end
end

q = Point.new(0, 1)
r = q.add!(Point.new(3, 3))
puts "#{r.x} #{r.y}"
