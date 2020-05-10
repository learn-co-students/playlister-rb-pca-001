# code genre here
class Genre
  attr_accessor :name

  @@all = []

  def initialize
    @@all << self
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    Artist.all.select { |artist| artist.genres.include? self }
  end

  class << self
    def all
      @@all
    end

    def count
      @@all.count
    end

    def reset_genres
      @@all.clear
    end
  end
end
