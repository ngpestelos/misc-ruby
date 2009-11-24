class MyOpenStruct
  def initialize
    @attributes = {}
  end

  def method_missing(name, *args)
    puts "#{name} #{args}"
    attribute = name.to_s
    if attribute =~ /=$/
      @attributes[attribute.chop] = args[0]
    else
      @attributes[attribute]
    end
  end
end

icecream = MyOpenStruct.new
icecream.flavor = "strawberry"
puts icecream.flavor
