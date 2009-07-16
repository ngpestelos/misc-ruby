# http://snippets.dzone.com/posts/show/6134
require 'rubygems'
require 'json'

# create a simple Hash
fruit_and_veg = {"banana" => 1.40, "grapes" => 0.89, "pears" => 0.60,
  "Rhubarb" => 1.30}

list = []
list << fruit_and_veg

fav = {}
fav["fruit_and_veg"] = list
fav["as_of"] = Time.now.strftime("%Y-%m-%d %H:%M:%S")
food = fav.to_json

puts food
