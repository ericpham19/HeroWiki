require 'nokogiri'
require 'open-uri'
class HeroWiki::Scraper 

    @doc = Nokogiri::HTML(URI("https://marvelvscapcom.fandom.com/wiki/Category:Marvel_Characters").open)


    def self.scrape_heroes
        self.scrape_heroes_data
    end


end