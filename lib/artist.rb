class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def genres
    songs.map(&:genre)
  end

  def self.all
    @@all
  end

  def self.reset_artists
    @@all.clear
  end

  def self.count
    @@all.count
  end
end
