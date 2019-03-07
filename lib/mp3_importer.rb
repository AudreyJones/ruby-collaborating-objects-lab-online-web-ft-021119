require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s"
    @files = []
  end

  def files
    binding.pry
    Dir[@path].each {|file| require file  }

    @path
  end

  def import
    Song.new_by_filename(some_filename)
  end

end
