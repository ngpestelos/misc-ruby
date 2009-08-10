# See Programming Ruby, pp. 61-62

class WordIndex
  def initialize
    @index = {}
  end

  def add_to_index(obj, *phrases)
    phrases.each do |phrase|
      phrase.scan(/\w[-\w']+/) do |word| #extract each word
        word.downcase!
        @index[word] = [] if @index[word].nil?
        @index[word].push(obj)
      end
    end
  end

  def lookup(word)
    @index[word.downcase]
  end
end

class SongList
  def initialize
    @songs = Array.new
    @index = WordIndex.new
  end

  def append(song)
    @songs.push(song)
    @index.add_to_index(song, song.name, song.artist)
    self
  end

  def lookup(word)
    @index.lookup(word)
  end
end

class Song
  attr_reader :name
  attr_reader :artist
  attr_reader :duration

  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end

  def to_s
    "Song: #@name -- #@artist (#@duration)"
  end
end

# test

songs = SongList.new
song_file = File.open('songdata')
song_file.each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  name.squeeze!(" ")
  mins, secs = length.scan(/\d+/)
  songs.append(Song.new(title, name, mins.to_i*60 + secs.to_i))
end

puts songs.lookup("Texas")
#puts songs.inspect
