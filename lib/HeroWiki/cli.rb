class HeroWiki::CLI
    
    
        def call
            loading_message
            # scrape data and display list
            greeting 
          
           
            
        end

        def loading_message
            puts "Avengers Assembling..."
            puts "Time to defeat Thanos"
            puts "Avengers Here"
        end

        def greeting
            puts "Welcome to HeroWiki! Tell me who is your favourite superhero/villian?"
            puts ""
            puts "Enter the name of your desired character"
            puts "Or type exit to end the program"
            puts ""
        end
        
   








   
end