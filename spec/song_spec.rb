describe "Song" do

  it "can initialize a song" do
    expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song = Song.new
    song.name = "Yellow Submarine"
    expect(song.name).to eq("Yellow Submarine")
  end

  it "can have a genre" do
    song = Song.new
    genre = Genre.new.tap { |genre| genre.name = "blues" }
    song.genre = genre
    expect(song.genre.name).to eq("blues")
  end

  it "has an artist" do
    artist = Artist.new.tap { |artist| artist.name = "Amos Lee" }
    song = Song.new.tap { |song| song.name = "Sweet Pea" }
    artist.add_song(song)
    expect(song.artist).to eq(artist)
  end
end
