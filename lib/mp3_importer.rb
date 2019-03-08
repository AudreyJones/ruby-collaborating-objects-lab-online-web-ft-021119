require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path ##"./spec/fixtures/mp3s"
    @files = Dir.entries(@path).select {|file| @files << file if file.include?(".mp3")}
  # Iterating over the contents of the mp3 folder; issue is first item in folder is hidden (.) file, so we need to #select only mp3 files.
    # Dir.entries(@path).select do |file|
    #   if file.include?(".mp3") == true
    #     @files << file
    #   end
    # end

  end

  def import
    Song.new_by_filename(some_filename)
  end

end
