lambda {
  shared = 10

  self.class.class_eval do
    define_method :counter do
      shared
    end

    define_method :down do
      shared -= 1
    end
  end
}.call

puts counter
3.times { down }
puts counter
