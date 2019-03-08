require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s"
    binding.pry
    @files = []
    Dir[@path].each {|file| @files << file}
  end

  def import
    Song.new_by_filename(some_filename)
  end

end
