class Curator
  attr_reader :photographs, :artists
  def initialize
    @photographs =[]
    @artists = []
  end

  def add_photograph(photograph)
    @photographs.push(photograph)
  end

  def add_artist(artist)
    @artists.push(artist)
  end

  def find_artist_by_id(id)
    @artists.find { |artist| artist.id == "#{id}" }
  end

  def photographs_by_artist
    photos_by_artist = {}
    @artists.each do |artist|
      photos_by_artist[artist] = @photographs.select do |photo|
        photo.artist_id == artist.id
      end
    end
    photos_by_artist
  end

  # Consider a refactor so that you dont have to shovel the result onto an array.
  def artists_with_multiple_photographs
    artist_names = []
    photographs_by_artist.each do |artist, photographs|
      artist_names.push(artist.name) unless photographs.count <= 1
    end
    artist_names
  end

  def photographs_taken_by_artist_from(location)
    photos = []
    photographs_by_artist.each do |artist, photographs|
      photos.push(photographs) unless artist.country != location
    end
    photos.flatten
  end
end
