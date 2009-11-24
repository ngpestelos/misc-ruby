require 'generator'

gen = Generator.new(1..8)
while gen.next?
  print gen.next, "--"
end

puts ""

gen.reverse_each { |x| print x, "--" }
