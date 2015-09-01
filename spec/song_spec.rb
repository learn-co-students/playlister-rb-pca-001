describe "Song" do
  let(:song) {Song.new}
  it "can initialize a song" do
  
     expect(song).to be_a(Song)
  end

  it "can have a name" do
     song.name = "Twinkle Twinkle Little Star"
     expect(song.name).to eq("Twinkle Twinkle Little Star")
  end

  it "can have a genre" do
     hip_hop = Genre.new
     song.genre = hip_hop
     expect(song.genre).to eq(hip_hop)
  end

  it "has an artist" do
     song.artist = "Door Mouse"
     expect(song.artist).to eq("Door Mouse")
  end
end
