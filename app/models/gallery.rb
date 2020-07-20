class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self
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
    paintings.map do |painting|
      painting.artist
    end.uniq
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    prices = paintings.map do |painting|
      painting.price
    end

    index = prices.index(prices.max)

    most_expensive_painting = paintings[index]

    "'#{most_expensive_painting.title}' by #{most_expensive_painting.artist.name} is the most expensive painting here at The #{self.name}."
  end



end
