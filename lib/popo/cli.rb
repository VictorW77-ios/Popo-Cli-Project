class Popo::CLI

    def call 
        intro
        user_menu
        officer_id
    end

    def intro
        puts "You've come to the right place."
        puts "\n"
        
        @departments = Popo::Department.chosen_dep
        @departments.each.with_index(1) do |department, i| #starts the index at 1 so I don't have to enter 'i-1'.
            puts "#{i} = #{department}"
        end

    end


    def user_menu 
        # input = nil
        # while input != "exit"
        loop do 
            puts "\nEnter the number of the department you want to search:"
            input = gets.strip.downcase

            if input.to_i == 1 || input.to_i == 2
                the_department = @departments[input.to_i-1]
                puts "\nYou entered: #{the_department}"
                puts "\n"
                break
            elsif input == "back"
                intro
            elsif input == "exit"
                puts "\nHave a good day."
                # break
                exit
            else 
                puts "\nPlease enter 1 or 2. Type 'back' to see the options again. Type 'exit' to exit."
            end
        end
    end

    def officer_id
        puts "Enter the number of the officer you want more information on:"
        input = gets.strip.downcase
        if input == "back"
            user_menu
            
        
    end

end