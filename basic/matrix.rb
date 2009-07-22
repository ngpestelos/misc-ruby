require 'mathn'
require 'matrix'

m = Matrix[[1,2], [3,4]]
i = m.inv
puts i*m
