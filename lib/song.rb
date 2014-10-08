class Song

  attr_reader :genre
  attr_accessor :name, :artist

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

end
