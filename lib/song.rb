require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename) #"Michael Jackson - Black or White - pop.mp3"
    song = Song.new(filename.split("-")[1].strip)
    binding.pry
    new_artist = Artist.new(filename.split("-")[0].strip)
    new_artist.add_song(song)
    # song.artist.name = filename.split("-")[0].strip
  end
end
