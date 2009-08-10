def greet()
  puts "Hello " + yield
end

greet { "World" }
