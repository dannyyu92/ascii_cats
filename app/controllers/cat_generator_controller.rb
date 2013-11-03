class CatGeneratorController < ApplicationController
	require 'nokogiri'
	require 'open-uri'

	def index
		url = "http://www.asciiworld.com/-Cats-.html"
		doc = Nokogiri::HTML(open(url))
		cats = Array(doc.css("pre"))
		@cat = cats.sample
	end
end
