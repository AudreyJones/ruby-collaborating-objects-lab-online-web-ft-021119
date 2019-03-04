require 'pry'
class MP3Importer
  attr_accessor :path, :list

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s" A STRING


  end

  def files

    @path
  end

end
