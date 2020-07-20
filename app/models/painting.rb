class Painting
  attr_accessor :price, :gallery
  attr_reader :title, :artist
  #price changes throughout the history of a painting
  #title and artist never change

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    Painting.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map do |painting|
      painting.price
    end.sum
  end

  def change_gallery(new_gallery)
    self.gallery = new_gallery
    #give the ability to change the painting to a different gallery
  end

end
