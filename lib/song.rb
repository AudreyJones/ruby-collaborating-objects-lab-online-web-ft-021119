class Song
  attr_accessor :title, :artist
  def initialize(title)
    @title = title
  end
  def self.new_by_filename(filename)
    new_song = Song.new(filename)
    # new_file.artist =
  end
end
