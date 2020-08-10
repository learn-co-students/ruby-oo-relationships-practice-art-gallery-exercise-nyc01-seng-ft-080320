class Painting
  attr_accessor :gallery
  attr_reader :title, :price, :artist

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum{ |painting| painting.price }
  end

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

end
