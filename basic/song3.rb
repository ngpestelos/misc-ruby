# See Programming Ruby, p. 28

class Song
  attr_reader :name, :artist, :duration
  attr_writer :duration
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
end

song = Song.new("Bicyclops", "Fleck", 260)
puts song.artist
song.duration = 300
puts song.duration
