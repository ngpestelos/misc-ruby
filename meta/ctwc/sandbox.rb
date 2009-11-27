def sandbox(&code)
  proc {
    $SAFE = 2
    yield
  }.call
end

begin
  sandbox { File.delete 'a_file' }
rescue Exception => ex
  puts ex
end
