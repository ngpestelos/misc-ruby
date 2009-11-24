class Lawyer
  def method_missing(method, *args, &block)
    puts "You called: #{method}(#{args.join(', ')})"
    puts "(You also passed it a block)" if block
  end
end

bob = Lawyer.new
bob.talk_simple('a', 'b') do
  # a block
end
