require 'rubygems'
require 'open-uri'
require 'json'

url = 'http://search.twitter.com/trends.json'

buffer = open(url, "UserAgent" => "Ruby-Wget").read

# convert JSON data into a hash
result = JSON.parse(buffer)

trends = result['trends']
trends.each do |subject|
  puts subject['name'] + ' ' + subject['url']
end
