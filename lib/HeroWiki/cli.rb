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
        input = gets.to_i
        Scraper.new.scrape_details(@hero_names[input][1])
            
        end

        def list_options
    
            @hero_names.each_with_index do |hero , index|
                 puts "#{index }. #{hero[0]}"
                
              
            end
        end
        
        # def display_hero(index)
        #   hero = @hero_names.all[index]
        #    Scraper.new.scrape_details(hero)

        #   puts " You choose"
        # end




   
end