require 'matrix'

x = (0..1).collect { |i| (0..1).collect { |j| rand } }
m = Matrix[x]
puts m
