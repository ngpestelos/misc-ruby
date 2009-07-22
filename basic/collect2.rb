require 'matrix'

v1 = Vector[1,2]
v2 = Vector[1,2]

v1.collect2(v2) { |e1,e2| e1*e2 }
