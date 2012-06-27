class PinItem < ActiveRecord::Base
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'

  attr_accessible :url, :description

  def self.pin_search(args)
  	description = args
    args = args.split(" ").join("+")
    url = "http://pinterest.com/search/?q=#{args}"
    doc = Nokogiri::HTML(open(url))

    doc.css('.pin').each do |item|
	  url = item.at_css(".PinImageImg")[:src]
	  h = Hash.new
	  h[:url] = url
	  PinItem.create(url: url, description: description)
    end
    PinItem.find_all_by_description(description).reverse
  end
end

