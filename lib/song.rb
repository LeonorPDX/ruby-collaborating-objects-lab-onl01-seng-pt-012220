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
  
  def artist_name=(name)
    if (self.artist.name.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
end