class Popo::CLI

    def call 
        general_list
        choose_officer
    end

    def general_list
        puts "Welcome to the Chicago PD Officer Finder"
        puts "\n"
        @officers = Popo::Officer.chicago_officers

        @officers.each_with_index(1) do |officer, i|
            puts "#{i}. #{officer.name}"
        end
        
    end


    def choose_officer
        puts "Enter the number of the officer you want more information on:"
        puts "\n"
        input = gets.strip.to_i
    
        if input.to_i == 1 || input.to_i == 2 || input.to_i == 3 || input.to_i == 4
            the_officer = @officers[input.to_i-1]
            puts "You selected: #{the_officer.name}"
            officer_info
        elsif input == "back"
            general_list
        else 
            puts "\n Please enter a number 1-4. Type 'back' to go back or 'exit' to exit."
        end

    end 

    def officer_info
        puts ""
        puts "        Name: #{officer.name}     "
        puts "Race: #{officer.race}     Sex: #{officer.gender}"
        puts "Birth Year/Age: #{officer.age}       Badge #: #{officer.badge_num}"
    end 
    
    def exit_message 
        puts "\n Stay informed!"
    end 
        

end