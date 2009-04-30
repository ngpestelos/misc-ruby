# Programming Ruby, p. 16

# set default values for hashes
histogram = Hash.new(0)
puts histogram['key1']

histogram['key1'] = histogram['key1'] + 1
puts histogram['key1']
