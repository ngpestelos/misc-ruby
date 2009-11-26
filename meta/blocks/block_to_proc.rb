def my_method(&the_proc)
  the_proc
end

p = my_method { |name| "Hello, #{name}!" }
puts p.class
puts p.call("Bill")
