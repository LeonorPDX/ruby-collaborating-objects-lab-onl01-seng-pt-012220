class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    files_array = Dir.entries(@path)
    files_array.select {filename| filename.end_with?(".mp3")}
  end
  
  def import
    
  end
  
end