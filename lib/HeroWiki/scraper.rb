 require 'nokogiri'
require 'open-uri'
require 'pry'
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
       details.css('.mw-parser-output').map do |tag|
        binding.pry
        if tag.css('.pull-quote__source') != nil
            name = tag.css('.pull-quote__source')
        end
        if tag.css('.mw-parser-output p') != nil
            description = tag.css('.mw-parser-output p')[2]
            abilities = tag.css('.mw-parser-output p')[3]
            quotes = tag.css('.mw-parser-output p')[1]
        end
        end
     end
end

