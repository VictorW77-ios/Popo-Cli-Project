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
        puts "\nEnter the number of the department you want to search:"
        input = gets.strip.to_i 

        if input.to_i == 1 || input.to_i == 2
            the_department = @departments[input.to_i-1]
            puts "\nYou entered: #{the_department}"
            puts "\n"
            finding_chi_officers
        if input == "back"
            intro
        elsif input == "exit"
            puts "\nHave a good day."
            exit
        else 
            puts "\nPlease enter 1 or 2. Type 'back' to see the options again. Type 'exit' to exit."
        end
    end

    def finding_chi_officers 
        puts "Enter the number of the officer you want more information on:"
        puts "\n"
        input = gets.strip.downcase
        
        @officers = Popo::Officer.chicago_officers
        @officers.each_with_index(1) do |officer, i|
            
            
        end
        
        if input == "back"
            user_menu
        elsif 
        end
    end 

    def finding_ny_officers 
        @officers = Popo::Officer.finding_ny_officers
        @officers.each_with_index(1) do |officer, i| 

    end 

 
        

end