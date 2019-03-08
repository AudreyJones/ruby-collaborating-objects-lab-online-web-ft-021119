require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s"
    binding.pry
    @files = []
    @files << Dir[@path].collect {|file| file}
  end

  def import
    Song.new_by_filename(some_filename)
  end

end
