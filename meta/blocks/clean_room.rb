class CleanRoom
  def a_useful_method(x); x * 2; end
end

puts CleanRoom.new.instance_eval { a_useful_method(3) }
