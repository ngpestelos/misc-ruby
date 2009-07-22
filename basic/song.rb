# See Programming Ruby, p. 23

class Song
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  def to_s
    "Song: #@name -- #@artist (#@duration)"
  end
end

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  # Format ourselves as a string by appending
  # our lyrics to our parent's #to_s value
  def to_s
    super + " [#@lyrics]"
  end
end

#song = Song.new("Bicyclops", "Fleck", 260)
#puts song.inspect

song = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts song.to_s
