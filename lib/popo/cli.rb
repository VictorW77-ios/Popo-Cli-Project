class Popo::CLI

    def call 
        general_list
        choose_officer
        exit_message
    end

    def general_list
        puts "Welcome to the Chicago PD Officer Finder"
        puts "\n"
        @officers = Popo::Officer.officer_scrape

        @officers.each.with_index(1) do |officer, i|
            puts "#{i}. #{officer.name}"
        end
        
    end


    def choose_officer
        input = nil
        while input != "exit"
            puts "Enter the number of the officer you want more information on:"
            puts "\n"
            input = gets.strip.downcase
        
            if input.to_i == 1 || input.to_i == 2 || input.to_i == 3 || input.to_i == 4
                the_officer = @officers[input.to_i-1]

                puts "        Name: #{the_officer.name}     "
                puts "Race: #{the_officer.race}            Sex: #{the_officer.gender}"
                puts "Birth Year/Age: #{the_officer.age}       Badge #: #{the_officer.badge_num}"
                puts "--------------------------------------------"
                puts "Type 'back' to search another officer.\n" 
            elsif input == "back"
                general_list
            else 
                puts "Please enter a number 1-4. Type 'back' to go back or 'exit' to exit." if input != "exit"
            end
        end

    end 

    def exit_message 
        puts "Stay informed!"
    end 
        

end