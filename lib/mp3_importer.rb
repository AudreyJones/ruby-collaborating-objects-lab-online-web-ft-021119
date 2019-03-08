require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s"
    @files = []
  # Iterating over the contents of the mp3 folder; issue is first item in folder is hidden (.) file, so we need to #select only mp3 files.
    Dir.entries(@path).select {|file| @files << file
    binding.pry}

  end

  def import
    Song.new_by_filename(some_filename)
  end

end
