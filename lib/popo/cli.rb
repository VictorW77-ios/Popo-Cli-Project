class Popo::CLI

    def call 
        intro
        user_menu
        officer_id
    end

    def intro
        puts "You've come to the right place."
        
        @departments = Popo::Department.chosen_dep
        @departments.each.with_index(1) do |department, i| #starts the index at 1 so I don't have to enter 'i-1'.
            puts "#{i} = #{department}"
        end

    end


    def user_menu
        puts "Enter the number of the department you want to search:"
        input = gets.strip.downcase
            
        if input.to_i == 1 || 2 
        the_department = @departments[input.to_i-1]
            puts "You entered: #{the_department}"
            # officer_id
        elsif input == "back"
            intro
        elsif input == "exit"
            puts "Have a good day."
            exit
        else 
            puts "Please enter 1 or 2. Type 'back' to see the options again. Type 'exit' to exit."
        end
    end

    def officer_id
        # puts "#{officer.name}"
        # the user has already selected a department, this method's purpose 
        # is to show the user a list of officers from the first page of the department's url 
        # on OpenOversight this may mean there needs to be two separate methods 
        # one for Chicago and one for NY 
        puts "Enter the number of the officer you want more information on:"
        
    end

    # def exit_message 
    #     puts "Have a good day."
    # end 




end