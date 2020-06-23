class Popo::CLI

    def call 
        intro
        user_menu
        officer_id
    end

    def intro
        puts "You've come to the right place. It's okay if you don't have the answer to every question."
        
        @departments = Popo::Department.chosen_dep
    end


    def user_menu
        input = nil 
        while input != "exit"        
            puts "Enter the number of the department you want to search:"
            input = gets.strip.downcase
            
            if input.to_i > 0 
                puts @departments[input.to_i-1]
            elsif input == "back"
                intro
            else 
                puts "Please enter 1 or 2. Type 'back' to see the options again. Type 'exit' to exit."
            end
        end
    end




    def officer_id
        puts "Do you remember any part of the officer's last name?"
    end




end