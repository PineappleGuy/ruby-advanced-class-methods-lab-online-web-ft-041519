class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = self.new
    new_song.save
    new_song
  end

  def self.new_by_name(string)
    new_song = self.new
    new_song.name = string
    new_song
  end

  def self.create_by_name(string)
    new_song = self.new
    new_song.name = string
    new_song.save
    new_song
  end

  def self.find_by_name(string)
    self.all.find {|song| song.name == string}
  end

  def self.find_or_create_by_name(string)
    self.find_by_name(string) || self.create_by_name(string)
  end

  def self.alphabetical
    array = self.all.sort {|a, b| a <=> b}
    array
    end

end
