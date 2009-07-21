# See Programming Ruby, p. 96

File.open("ordinal").grep(/d$/) do |line|
  puts line
end
