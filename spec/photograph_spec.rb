require './lib/photograph'
require './lib/artist'

RSpec.describe Photograph do
  before(:each) do
    attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }

    @photograph = Photograph.new(attributes)
  end

  describe '#initialize' do
    it 'has the id' do
      expect(@photograph.id).to eq("1")
    end

    it 'has the name' do
      expect(@photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
    end

    it 'has the artis id' do
      expect(@photograph.artist_id).to eq("4")
    end

    it 'has the year' do
      expect(@photograph.year).to eq("1954")
    end
  end
end
