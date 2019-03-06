class Song
  attr_accessor :name,:artist,:genre
  @@count=0
  @@genres=[]
  @@artists=[]
  @@genre_count={}
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre =genre
    @@count+=1
    @@genres << @genre
    @@artists << @artist
    
  end
  
  def self.count
    @@count
  end
  
  def self.genres
      @@genres.uniq
  end
  
  def self.artists
      @@artists.uniq
  end
  
  def self.genre_count
      @@genres.each do |genre|
        if(!@@genre_count.has_key?(genre))
          @@genre[genre]=1
        else
          @@genre[genre]+=1
        end
          
          
    end
  end
end