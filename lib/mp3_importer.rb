class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    files_array = @path.entries
    
    files_array.select.ends_with
  end
  
  def import
    
  end
  
end