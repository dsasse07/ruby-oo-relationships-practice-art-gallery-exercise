class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map(&:gallery)
  end

  def cities
    self.galleries.map(&:city)
  end
  
  def self.total_experience
    self.all.sum(&:years_experience)
  end

  def self.most_prolific
    self.all.max_by{|artist| (artist.paintings.count/artist.years_experience.to_f)}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self,  gallery)
  end


end
