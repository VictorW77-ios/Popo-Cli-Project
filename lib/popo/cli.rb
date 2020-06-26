class Popo::CLI

    def call 
        intro
        user_menu
        officer_id
        exit_message
    end

    def intro
        puts "You've come to the right place. It's okay if you don't have the answer to every question."
        
        @departments = Popo::Department.chosen_dep
        @departments.each.with_index(1) do |department, i| #starts the index at 1 so I don't have to enter 'i-1'.
            puts "#{i} = #{department}"
        end

    end


    def user_menu
        input = nil 
        while input != "exit"
            puts "Enter the number of the department you want to search:"
            input = gets.strip.downcase
            
            if input.to_i > 0
                the_department = @departments[input.to_i-1]
                puts "You entered: #{the_department}" #want the array index of the department
                officer_id
            elsif input == "back"
                intro
            else 
                puts "Please enter 1 or 2. Type 'back' to see the options again. Type 'exit' to exit."
            end
        end
    end

    def officer_id
        input = gets.strip.downcase
        puts "Do you remember any part of the officer's name?"
        if input == "yes"
            puts "Please enter whatever you remember:"
        elsif input == "no"
            puts "Do you remember any part of the officer's badge number?"
        else
            puts "Invalid entry. Please enter any part of the officer's name or type 'no'."
        end
    end

    def exit_message 
        puts "Have a good day."
    end 




end