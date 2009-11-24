# Decide which method to call at runtime
# from Metaprogramming Ruby

method_to_call = :reverse
obj = "abc"

puts obj.send(method_to_call)
