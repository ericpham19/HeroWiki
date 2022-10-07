require 'nokogiri'
require 'open-uri'
require 'pry'
require 'colorize'
class HeroWiki::Scraper 
    include HeroWiki
     def scrape
        doc = Nokogiri::HTML(URI.open("https://marvelvscapcom.fandom.com/wiki/Category:Marvel_Characters"))
        hero_array = []

        doc.css('.category-page__members').flat_map do |tag|
        		tag.css('.category-page__member-link').map do |item|
        				url = "https://marvelvscapcom.fandom.com" + item.attributes.values[0].value
                name =  item.text  
                hero_array << [name, url]
            end
        end
        hero_array
      end

   	 def scrape_details(url)
    		 details = Nokogiri::HTML(URI.open(url))
         details.css('.page__main').map do |tag|
         		 name = tag.css('.page-header__title').text.strip 
             description = (tag.css('.mw-parser-output p')[0] || tag.css('.mw-parser-output p')[2]).text.gsub(/\s+/,' ')
             quotes = tag.css('.pull-quote__text').text.strip 

            person= Hero.new(name, description, quotes)
            if person.quotes != nil
                puts person.quotes.colorize(:red) 
              
            else
          		  person.quotes = "No quotes from me"
                puts person.quotes
                
            end
            puts " "
            puts " "
            puts person.description.colorize(:blue)
            puts " "
         end
    end
end

