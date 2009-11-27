class String
  alias :old_reverse :reverse

  def reverse
    "x#{old_reverse}x"
  end
end

puts "abc".reverse
