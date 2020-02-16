require 'Nokogiri'
require 'open-uri'

class Scraper
  def self.get_page
    html = Nokogiri::HTML(open("https://www.x-rates.com/table/?from=USD&amount=1"))

    unit = html.css("table.tablesorter.ratesTable tr")
     
        unit.each do |data|
            currency = Currency.new
            currency.name = data.css("td:nth-child(1)").text
            currency.inverse = data.css("td:nth-child(2)").text
            currency.to_dollars = data.css("td:nth-child(3)").text
            currency.save
        end
  end
end