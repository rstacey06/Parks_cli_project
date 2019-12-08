require "parks_cli/version"
require 'nokogiri'
require 'open-uri'


# require_relative "parks_cli/version"
require_relative "parks_cli/park.rb"
require_relative "parks_cli/state.rb"
require_relative "parks_cli/scrape.rb"
require_relative "parks_cli/cli.rb"

module ParksCli
  class Error < StandardError; end
  # Your code goes here...
end
