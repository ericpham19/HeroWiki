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
          
            puts ""
        end
        
        def menu
         
          
          list_options.each_with_index do |name, index|
            puts "#{index + 1  }. #{name[0]}"
          end

        input = nil
          while input != "exit"
            
            puts "Enter the index of your desired character"
            input = gets.strip
            
            if input.to_i > 0
                input = input.to_i
                display_character(list_options[input - 1])
                
              elsif input == "exit"
                exit_program
                else
                    puts "Please try again"
                end
         end
              
          
           
           

        end

        def exit_program
            puts " "
            puts "Thank you and see you again"
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
          Scraper.new.scrape_details(character[1])
            
           
        end

 
        def display_or_exit
            puts "Would you like to see the menu again? [y/n]"
            result = gets.strip.downcase

                if result == "y"
                    puts "Here is your selection"
                    puts " "
                    menu
                    elsif answer == "n" || answer == "exit"
                    
                        exit_program
                        else
                            puts "Oh no, please try again"
                             puts " "
                        end
       end

end