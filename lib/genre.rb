class Genre
  attr_accessor :name
  @all = []

  def initialize
    self.class.all << self
  end

  class << self
    attr_reader :all
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    Artist.all.select do |artist|
      artist.songs.any? { |song| song.genre == self }
    end
  end

  def self.reset_genres
    all.clear
  end

  def self.count
    all.count
  end
end
