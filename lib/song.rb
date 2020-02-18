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
    song = self.new(filename.split(" - ")[1])
    song.artist = filename.split(" - ")[0]
    song
  end
  
  #def artist_name=(name)
  #  if (self.artist.name.nil?)
  #    self.artist = Artist.new(name)
  #  else
  #    self.artist.name = name
  #  end
  #end
  
end