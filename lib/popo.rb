require 'open-uri'
require 'nokogiri'
require 'pry'
require 'colorize'

require_relative "./popo/version"
require_relative './popo/cli'
require_relative './popo/officer'
require_relative './popo/scraper'


module Popo 
    class Error < StandardError; end 
end