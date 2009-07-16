# Programming Ruby, p. 76

class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end
  def get_tax(amount)
    "#@name on #{amount} = #{ @block.call(amount) }"
  end
end

tc = TaxCalculator.new("Sales Tax") { |amt| amt * 0.075 }
puts tc.get_tax(100)
puts tc.get_tax(250)
