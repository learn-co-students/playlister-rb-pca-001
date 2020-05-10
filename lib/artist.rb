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
    @songs.collect(&:genre)
  end

  class << self
    def all
      @@all
    end

    def reset_artists
      @@all.clear
    end

    def count
      @@all.count
    end
  end

end
