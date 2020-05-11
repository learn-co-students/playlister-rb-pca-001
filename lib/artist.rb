class Artist
  attr_accessor :name
  @all = []

  def initialize
    self.class.all << self
  end

  def add_song(song)
    song.artist = self
  end

  class << self
    attr_reader :all
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map(&:genre).uniq
  end

  def songs=(songs)
    songs.each { |song| song.artist = self }
  end

  def self.count
    all.count
  end

  def self.reset_artists
    @all = []
  end
end
