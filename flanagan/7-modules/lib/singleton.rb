require 'singleton'

class PointStats
  include Singleton

  def initialize
    @n, @totalX, @totalY = 0, 0.0, 0.0
  end

  def record(point)
    @n += 1
    @totalX += point.x
    @totalY += point.y
  end

  def report
    puts "Number of points created: #@n"
    puts "Average X coordinate: #{@totalX/@n}"
    puts "Average Y coordinate: #{@totalY/@n}"
  end
end

class Point
  attr_reader :x, :y
  def initialize(x, y)
    @x, @y = x, y
    PointStats.instance.record(self)
  end
end

Point.new(0, 0)
puts PointStats.instance.report
