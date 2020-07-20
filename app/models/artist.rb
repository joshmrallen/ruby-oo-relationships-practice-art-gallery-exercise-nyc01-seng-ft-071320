class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  def self.all
    @@all
  end

  def paintings
    #use Painting.all and select artist == self
    #they set up painting.rb wihout an artist attribute
    #so should this be an array of painting instances?
    #but if I hold a unique array of paintings, instead of generating one from painting.rb, doesn't that disregard single source of truth?
    #yes, so I should add an artist_name attr to painting.rb
    #I think it would also help to add the gallery attr to painting.rb as well
    #so painting.rb really is the join class!
    Painting.all.select do |painting|
      painting.artist == self
    end

  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end.uniq
  end

  def cities
    #all cities -- this the gallery attribute of each painting to return the city attribute for each
    galleries.select do |gallery|
      gallery.city
    end
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    total = 0
    self.all.map do |artist|
      total += artist.years_experience
    end
    total
  end

  def self.most_prolific
    production = self.all.map do |artist|
        pro = artist.paintings.count.to_f / artist.years_experience.to_f
        pro.round
      end
      #calculates num of paintings per year for each artist and save array

    index = production.index(production.max)
    #calculate the maximum production, then find the index of that artist and store it

    prolific = self.all[index]

    "#{prolific.name} is the most prolific artist with around #{production[index]} paintings per year."
  end



end
