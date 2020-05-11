class Song
  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end
