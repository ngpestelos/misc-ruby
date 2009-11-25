a = 1
puts defined? a

module MyModule
  b = 1
  puts defined? a
  puts defined? b
end

puts defined? a
puts defined? b
