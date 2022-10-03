 require 'nokogiri'
require 'open-uri'
require 'pry'
class HeroWiki::Scraper 

    def scrape
        doc = Nokogiri::HTML(URI.open("https://marvelvscapcom.fandom.com/wiki/Category:Marvel_Characters"))
        doc.css('.category-page__members').each do |tag|

            name = tag.css('.category-page__member-link').map do |item|
                item.text
            end
            

        end





        
    end


end