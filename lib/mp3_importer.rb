require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s"
    @files = []
    Dir[@path].each {|file| @files << file
    binding.pry}

  end

  def import
    Song.new_by_filename(some_filename)
  end

end
