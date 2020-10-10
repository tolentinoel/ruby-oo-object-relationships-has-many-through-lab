class Artist
  attr_accessor :name, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    Song.all.collect do |y|
      if y.artist == self
        y.genre
      end
    end
  end


end
