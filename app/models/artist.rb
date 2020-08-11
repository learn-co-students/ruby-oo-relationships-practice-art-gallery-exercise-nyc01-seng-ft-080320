class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end.uniq
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  # def self.total_experience
  #   Artist.all.map do |artist|
  #     artist.experience
  #   end.sum
  # end

  def self.total_experience
    Artist.all.sum do |artist|
      artist.years_experience
    end
  end

  def artist_experience
    self.years_experience / self.paintings.count
  end

  def self.most_prolific
    selected = Artist.all.map do |artist|
      artist.artist_experience
    end.min
    Artist.all.find do |artist|
      artist.artist_experience == selected
    end
  end

  def create_painting(gallery, title, price)
    Painting.new(self, gallery, title, price)
  end 

end

