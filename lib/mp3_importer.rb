require 'pry'
class MP3Importer
  attr_accessor :path, :list

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s" A STRING
    # binding.pry

  end

  def files
    # binding.pry
    @path
  end

end
