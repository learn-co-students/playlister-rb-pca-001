class Artist

  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @songs = []
    @genres = []
    @@artists << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    self.genres << song.genre
    song.genre.artists << self if song.genre && !song.genre.artists.include?(self)
  end

  def self.reset_artists
    @@artists.clear
  end

  def self.all
    @@artists
  end

  def self.count
    self.all.count
  end

end