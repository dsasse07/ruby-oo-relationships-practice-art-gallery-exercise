class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
      Painting.all.select {|painting| painting.gallery == self}
  end

  def artists 
    self.paintings.map(&:artist)
  end

  def most_expensive_painting
    self.paintings.max_by(&:price)
  end
end
