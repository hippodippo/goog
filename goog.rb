#!/usr/bin/env ruby

# Author: Kaycee Ingram
# Simple command-line tool for googling things in your terminal.

gem 'launchy', '~> 2.4', '>= 2.4.3'

require 'launchy'

search_string = ''

ARGV.each do | word |
  if (word == ARGV[0])
    search_string = word
  else
    search_string = search_string + "+#{word}"
  end
end

Launchy.open("https://www.google.com/search?source=hp&ei=vUNSW7j-NYSusAWmrKPoBQ&q=#{search_string}")