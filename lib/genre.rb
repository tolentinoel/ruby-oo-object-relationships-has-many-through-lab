class Genre
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|sng| sng.genre == self}
  end

  def artists
    Song.all.collect do |x|
      if x.genre == self
        x.artist
      end
    end
  end


end