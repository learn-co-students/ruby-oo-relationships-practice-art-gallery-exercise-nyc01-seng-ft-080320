class Painting

  attr_reader :artist, :gallery, :title, :price

  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist
    @gallery = gallery
    @price = price
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    Painting.all.map do |painting|
      painting.price
    end.sum
  end
  
end

