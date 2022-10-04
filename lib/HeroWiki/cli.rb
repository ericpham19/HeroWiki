require 'pry'
class HeroWiki::CLI
    include HeroWiki
    
    
        def call
            loading_message
            greeting 
          
           @hero_names =  Scraper.new.scrape
         
           menu
            
        end

        def loading_message
            puts "Avengers Assembling..."
            puts "Time to defeat Thanos"
            puts "Avengers Here"
            puts " "
        end

        def greeting
            puts "Welcome to HeroWiki! Tell me who is your favourite superhero/villian?"
            puts "Enter the name of your desired character"
            puts "Or type exit to end the program"
            puts ""
        end
        
        def menu
          list_options

        end

        def list_options
    
            @hero_names.each_with_index do |name , index|
                puts "#{index + 1}. #{name}"
            end
        end
        






   
end