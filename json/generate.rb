require 'rubygems'
require 'json'

# How to generate JSON from Ruby

j = JSON.generate [1, 2, {"a" => 3.141}, false, true, nil, 4..10]
puts j
