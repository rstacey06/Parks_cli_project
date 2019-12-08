class Park

  attr_accessor :name, :location, :info, :state

  @@all =[]

  def initialize(name, location, info, state)
    @name = name
    @location = location
    @info = info
    @state = state
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_info_by_index(number)
      number -= 1
      park_info = Park.all[number].info
      puts park_info
    end
end
