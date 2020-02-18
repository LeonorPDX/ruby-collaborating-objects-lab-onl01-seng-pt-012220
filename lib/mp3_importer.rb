class MP3Importer
  attr_accessor :path, :files
  
  
  def initialize(file_path)
    @path = file_path
    @files = []
  end
  
  def files
    @files = Dir.entries(@path)
    @files.select {filename| filename.end_with?(".mp3")}
  end
  
  def import
    
  end
  
end