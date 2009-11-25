def a_method
  return yield if block_given?
  'no block'
end

puts a_method
puts a_method { "here's a block" }
