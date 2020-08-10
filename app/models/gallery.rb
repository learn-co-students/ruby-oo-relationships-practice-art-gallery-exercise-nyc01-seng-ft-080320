class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    self.paintings.map do |painting|
      painting.artist
    end.uniq
  end

  def artist_names
    self.artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    most_expensive = self.paintings.map do |painting|
      painting.price
    end.max
    self.paintings.find do |painting|
      painting.price == most_expensive
    end
  end
end

