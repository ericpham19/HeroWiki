   require 'pry'
class HeroWiki::CLI
   def call
      loading_message
      greeting 
      @hero_names =  HeroWiki::Scraper.new.scrape
         
      HeroWiki::Logo.new.design
      puts " "
      menu
   end

   def loading_message
      puts "Heroes..."
      puts "Time to defeat Thanos"
      puts "Heroes Here"
      puts " "
    end

    def greeting
        puts "Welcome to HeroWiki! Tell me who is your favourite superhero/villian?"
        puts " "
     end

    def menu
      	list_options.each_with_index do |name, index|
        		puts "#{index + 1  }. #{name[0]}"
        end
        input = nil
        while input != "exit"
            puts " "
            puts "Enter the index of your desired character (1-60)"
            puts " "
            input = gets.strip
            
            if input.to_i > 0
                input = input.to_i
                puts " "
                display_character(list_options[input - 1])
                puts " "
                display_or_exit

                else
               puts " "
               puts "Please try again"
               puts " "
            end
       end
    
     end

    def exit_program
      		puts " "
          puts " Thank you and see you again "
        	puts " "
          exit
  	 end

    def list_options
        @hero_names.each_with_index do |hero , index|
      		  "#{index + 1 }. #{hero[0]}"

        end
    end
        
    def display_character(character)
            
    		 puts character[0]  
         HeroWiki::Scraper.new.scrape_details(character[1])
    end


     def display_or_exit
        puts "Would you like to see the menu again? [y/n]"
        result = gets.strip.downcase

        if result == "y"
        		puts "Here is your selection"
            puts " "
            menu
        elsif result == "n" || result == "exit"
            exit_program
        else
        		 puts " Please try again"
             puts " "
        end
    end

end