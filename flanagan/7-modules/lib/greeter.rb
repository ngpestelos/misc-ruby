class WorldGreeter
  def greet
    puts "#{greeting} #{who}"
  end

  def greeting
    "Hello"
  end

  def who
    "World"
  end
end

class SpanishWorldGreeter < WorldGreeter
  def greeting
    "Hola"
  end
end

puts WorldGreeter.new.greet
puts SpanishWorldGreeter.new.greet
