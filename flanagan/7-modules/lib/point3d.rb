Point = Struct.new(:x, :y)

class Point3D < Point

end

p2 = Point.new(1, 2)
p3 = Point3D.new(1, 2)
puts "#{p2.x},#{p2.y} #{p2.class}"
puts "#{p3.x},#{p3.y} #{p3.class}"
