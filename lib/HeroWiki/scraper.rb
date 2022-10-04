 require 'nokogiri'
require 'open-uri'
require 'pry'
class HeroWiki::Scraper 
    include HeroWiki
    def scrape
        doc = Nokogiri::HTML(URI.open("https://marvelvscapcom.fandom.com/wiki/Category:Marvel_Characters"))
         doc.css('.category-page__members').flat_map do |tag|
            
             tag.css('.category-page__member-link').map do |item|
                item.text
            end
            
        end
    
    end
end

