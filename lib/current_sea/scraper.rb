require 'Nokogiri' #.css 
require 'open-uri'

class Scraper
  def self.get_page
    html = Nokogiri::HTML(open("https://www.x-rates.com/table/?from=USD&amount=1"))

    unit = html.css("table.tablesorter.ratesTable tr")
     
        unit.each do |data|
            money = Currency.new
            money.name = data.css("td:nth-child(1)").text
            money.inverse = data.css("td:nth-child(2)").text
            money.to_dollars = data.css("td:nth-child(3)").text
            money.save
        end
  end
end