require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
# FILE FORMAT: Action Bronson - Larry Csonka - indie.mp3

    song = Song.new(filename.split("-")[1].strip)
    song.artist = (filename.split("-")[0].strip)
    # song.artist.name = filename.split("-")[0].strip
      binding.pry
  end
end
