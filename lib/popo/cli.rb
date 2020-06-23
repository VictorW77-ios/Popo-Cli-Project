class Popo::CLI

    def call 
        list_departments
        officer_id
    end

    def list_departments
        puts "You've come to the right place. Please enter any information you have about the officer. It's okay if you don't have the answer to every question. 
        
        Select a department: 
        1 = Chicago PD
        2 = Immigration and Customs Enforcement (ICE)
        3 = New York City PD"

        input = gets.strip
        case input 
        when "1"
            puts 

        if input == "1" 
            puts 
        elsif input == "2"
            puts 
        elsif input == "3"
            puts 
        else 
            puts "Please enter a number 1-9"
        end


    end

    def officer_id
        puts "Do you remember any part of the officer's last name?"
    end

end