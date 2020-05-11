class Genre
  attr_accessor :name
  @@all = []

  def initialize
    @@all << self
  end

  def songs
    Song.all.select { |e| e.genre == self }
  end

  def artists
    Artist.all.select { |e| e.genres[0] == self }
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def self.reset_genres
    @@all.clear
  end
end
