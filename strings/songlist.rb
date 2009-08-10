# See Programming Ruby, p. 59

File.open("songdata") do |song_file|
  songlist = song_file.collect do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    {
      :file   => file,
      :length => length,
      :name   => name.squeeze(" "),
      :title  => title
    }
  end
  puts songlist[0][:name]
  puts songlist[1][:name]
  puts songlist[2][:name]
end
