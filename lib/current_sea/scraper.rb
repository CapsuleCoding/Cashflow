require 'Nokogiri'
require 'open-uri'

class Scraper
  def self.get_page
    html = Nokogiri::HTML(open("https://www.x-rates.com/table/?from=USD&amount=1"))
  end
end