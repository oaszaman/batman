# frozen_string_literal: true

require_relative "batman/version"
require_relative "batman/cli"
require_relative "batman/comics"
require_relative "batman/ScraperForTitles"
require_relative "batman/titles"
require_relative "batman/ScraperForComics"



require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'
require 'colorized_string'
#require 'watir'
#require 'webdrivers'

module Batman
  class Error < StandardError; end
  # Your code goes here...
end
