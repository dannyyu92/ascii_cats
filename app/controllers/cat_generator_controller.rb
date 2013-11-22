class CatGeneratorController < ApplicationController
	helper_method :getNewCat
	require 'nokogiri'
	require 'open-uri'

	def index
		url = "http://www.asciiworld.com/-Cats-.html"
		doc = Nokogiri::HTML(open(url))
		@cats = doc.css("pre").to_a.map(&:to_s)
		@cat = getNewCat()
	end

	def getNewCat
	  return @cats.sample
	end
end
