class Popo::CLI

    def call 
        intro
        officers_list
    end

    def intro
        puts "Welcome to the Chicago PD Officer Finder"
        puts "\n"
        @officers = Popo::Officer.chicago_officers

        @officers.each_with_index(1) do |officer, i|
            puts "#{i}. #{officer.name}"
        end
        
    end


    # def user_menu 
    #     puts "\nEnter the number of the department you want to search:"
    #     input = gets.strip.to_i 

    #     if input.to_i == 1 
    #         the_department = @departments[input.to_i-1]
    #         puts "\nYou entered: #{the_department}"
    #         puts "\n"
    #         finding_chi_officers
    #     elsif input == "back"
    #         intro
    #     elsif input == "exit"
    #         puts "\nHave a good day."
    #         exit
    #     else 
    #         puts "\nType 'back' to return to the main menu. Type 'exit' to exit."
    #     end
    # end

    def officers_list
        puts "Enter the number of the officer you want more information on:"
        puts "\n"
        input = gets.strip.to_i
    
        if input.to_i == 1 || input.to_i == 2 || input.to_i == 3 || input.to_i == 4
            the_officer = @officers[input.to_i-1]
            puts "You selected: #{the_officer.name}"
            officer_info

        elsif "back"
            intro
        else 
            puts "\n Please enter a number 1-4. Type 'back' to go return to the list or 'exit' to exit."
        end

    end 

    def officer_info
        puts "        Name: #{officer.name}     "
        puts "Race: #{officer.race}     Sex: #{officer.gender}"
        puts "Age: #{officer.age}       Badge #: #{officer.badge_num}"
    end 
 
        

end