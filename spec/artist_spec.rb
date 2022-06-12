require './lib/photograph'
require './lib/artist'

RSpec.describe Artist do
  before(:each) do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    @artist = Artist.new(attributes)
  end

  describe '#initialize' do
    it 'returns the artists id' do
      expect(@artist.id).to eq("2")
    end

    it 'returns the artists name' do
      expect(@artist.name).to eq("Ansel Adams")
    end

    it 'returns the artists birth year' do
      expect(@artist.born).to eq("1902")
    end

    it 'returns the artists year of death' do
      expect(@artist.died).to eq("1984")
    end

    it 'returns the artists country of origin' do
      expect(@artist.country).to eq("United States")
    end
  end

  describe '#age_at_death' do
    it 'returns the age of the artist when they died' do
      expect(@artist.age_at_death).to eq(82)
    end
  end
end
