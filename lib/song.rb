class Song
  attr_accessor :name, :artist, :genre
  @all = []
  def initialize
    self.class.all << self
  end

  class << self
    attr_reader :all
  end
end
