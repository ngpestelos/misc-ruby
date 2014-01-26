require 'date'

puts Date.strptime("12/08/1985", "%m/%d/%Y").strftime("%Y-%m-%d")

date = Date.today
puts date
puts date + 1
