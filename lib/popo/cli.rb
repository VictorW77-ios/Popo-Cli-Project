class Popo::CLI

    def call 
        intro
        user_menu
        # officer_id
    end

    def intro
        puts "You've come to the right place."
        
        @departments = Popo::Department.chosen_dep
        @departments.each.with_index(1) do |department, i| #starts the index at 1 so I don't have to enter 'i-1'.
            puts "#{i} = #{department}"
        end

    end


    def user_menu
        loop do
            puts "Enter the number of the department you want to search:"
            input = gets.strip.downcase
            break if input == "exit"
            
            if input.to_i == 1 || 2 
                the_department = @departments[input.to_i-1]
                puts "You entered: #{the_department}" #want the array index of the department
                officer_id
                break
            elsif input == "back"
                intro
            else 
                puts "Please enter 1 or 2. Type 'back' to see the options again. Type 'exit' to exit."
            end
        end
        puts "Have a good day."
    end

    def officer_id
        #should go to officer.rb to fetch an array of officers based on user input
    end

    # def exit_message 
    #     puts "Have a good day."
    # end 




end