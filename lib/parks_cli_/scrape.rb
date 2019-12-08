require 'pry'
require 'nokogiri'
require 'open-uri'


class Scraper

  NPS_INDEX = "https://www.nps.gov/index.htm"

    def self.scrape_parks
      doc = open(NPS_INDEX)
      parsed_doc = Nokogiri::HTML(doc)
      grabbed_elements = parsed_doc.css("ul.dropdown-menu li")
      grabbed_elements.each do |element|

        name = element.text
        state_url = element.css("a").attribute("href").value
        url = NPS_INDEX.gsub("/index.htm", state_url)
        State.new(name, url)
      end
    end

    def self.scrape_page(url)
    doc = open(url)
    parsed_doc = Nokogiri::HTML(doc)
    grabbed_elements = parsed_doc.css("li.clearfix:not(.numbers_download)")
    grabbed_elements.each_with_index do |element, index|

      name = grabbed_elements.css("div.col-md-9").css("h3")[index].nil? ? nil : grabbed_elements.css("div.col-md-9").css("h3")[index].text
      location = grabbed_elements.css("div.col-md-9").css("h4")[index].nil? ? nil : grabbed_elements.css("div.col-md-9").css("h4")[index].text
      info = grabbed_elements.css("div.col-md-9").css("p")[index].nil? ? nil : grabbed_elements.css("div.col-md-9").css("p")[index].text
      new_park = Park.new(name, location, info, CLI.select_state)
    end
  end
end
