class State

  attr_accessor :name, :url

  @@all=[]

  def initialize(name, url)
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def scraped?
    self.parks.length > 0
  end

  def self.find_by_state(string)
    @@all.detect do |state|
      state.name == string
    end
  end

  def self.all_names
    self.all.map {|state| state.name}
  end

  def parks
     Park.all.select {|park| park.state == self}
   end
end
