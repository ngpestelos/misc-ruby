# Pickaxe, p. 70

"12:50am" =~ /(\d\d):(\d\d)(..)/
puts "Hour is #$1, minute #$2"
"12:50am" =~ /((\d\d):(\d\d))(..)/
puts "Time is #$1"
puts
