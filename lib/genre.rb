class Genre

  attr_accessor :name, :songs, :artists

  GENRES = []

  def initialize
    @songs = []
    @artists = []
    GENRES << self
  end

  def self.reset_genres
    GENRES.clear
  end

  def self.count
    self.all.count
  end

  def self.all
    GENRES
  end

end