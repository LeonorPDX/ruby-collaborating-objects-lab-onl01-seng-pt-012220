class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
  end
  
  #def artist_name=(name)
  #  if (self.artist.name.nil?)
  #    self.artist = Artist.new(name)
  #  else
  #    self.artist.name = name
  #  end
  #end
  
end