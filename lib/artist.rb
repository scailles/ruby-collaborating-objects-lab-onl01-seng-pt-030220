class Artist
  
  attr_accessor :name, :song
  
  @@all=[]
 
  
  def initialize(name)
    @name=name
    @@all << self
    @songs=[]
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def songs
    @songs
  end
  
  def self.find_or_create_by_name(name)
   if @@all.include?(name)
     self.name
   else 
     self.new(name)
   end
 end
end
