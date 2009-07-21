# http://ruby-doc.org/core/classes/Range.html

class Xs
  include Comparable
  attr :length
  
  def initialize(n)
    @length = n
  end
  
  def succ
    Xs.new(@length + 1)
  end
  
  def <=>(other)
    @length <=> other.length
  end

  def to_s
    sprintf "%2d #{inspect}", @length  
  end

  def inspect
    'x' * @length
  end

end

r = Xs.new(3)..Xs.new(6)
puts r.to_a
