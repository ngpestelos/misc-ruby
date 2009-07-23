'http://reader.google.com' =~ /^http:\/\/([\w]+\.[\w]+(\.[\w]+)+)$/
puts $1

'http://reader.google.com/view/abcdefg' =~ /^http:\/\/([\w]+\.[\w]+(\.[\w]+)+).*$/
puts $1
