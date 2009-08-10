# See Programming Ruby, p. 20

def call_block
  yield("hello", 99)
end

call_block do |str, num| 
  puts str
  puts num + 1
end
