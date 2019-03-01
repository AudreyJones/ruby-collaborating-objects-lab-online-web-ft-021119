require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    @@all.each do |artist|
      if artist.name == name
        artist
      else
        Artist.new(name) == name
      end
    end
  end

  def add_song(song)
    # binding.pry
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end
end
