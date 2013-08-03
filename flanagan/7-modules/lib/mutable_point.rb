class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    self.x, self.y = x, y
  end

  def add!(p)
    @x += p.x
    @y += p.y
    self
  end

  def add(p)
    q = self.dup
    q.add!(p)
  end
end

p,q = Point.new(0,0),Point.new(1,1)
r = p.add(q)
puts "#{p.object_id}, #{q.object_id}, #{r.object_id}"
puts "#{r.x} #{r.y}"
