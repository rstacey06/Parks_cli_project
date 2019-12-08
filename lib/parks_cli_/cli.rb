class CLI

  @@select_state = nil

  def self.select_state
    @@select_state
  end

  def call
    Scraper.scrape_parks
    intro
    list_states
    menu
    select_park
  end

  def intro
    puts "National Parks Registrty"
  end

  def list_states
    puts "National Park Locations:"
    State.all_names.each do |name|
      puts name
  end
 end

def menu
  puts "Please enter the name of a State for a list of National Parks in that state."
   input = nil
   input = gets.strip

   while State.find_by_state(input) == nil
        puts "Please enter the name of a State for a list of National Parks in that state."
        input = gets.strip
      end
      State.find_by_state(input)
      @@select_state = State.find_by_state(input)
      @@select_state.scraped? ? list_parks : Scraper.scrape_page(@@select_state.url)
      list_parks
    end

  def list_parks
    Park.all.each_with_index do |park, i|
      puts " #{i + 1}." + "#{park.name}" + "#{park.location}"
    end
  end

  def select_park
    puts "Type in a Parks number for more information or 'exit' to exit!"
    info_input = gets.strip

    while !("1"..Park.all.length.to_s).include?(info_input)
      if info_input == 'exit'
        return farewell
      else
        puts "Please try again."
        info_input = gets.strip
      end
    end

    Park.find_info_by_index(info_input.to_i)
    list_or_exit
  end

  def list_or_exit
    puts "Please type 'list' if you'd like to see a different park or 'exit' to exit."
    input = nil
    input = gets.strip

    while input != 'exit'
      list_parks
      select_park
      input = gets.strip
    end

    puts farewell
  end

  def farewell
    puts "Safe Travels"
  end
end
