class Popo::CLI

    def call 
        begin_cli
    end

    def begin_cli
        puts "You've come to the right place. Please enter any information you have about the officer. It's okay if you don't have the answer to every question. 

        Select a department: 
        1 = Chicago PD
        2 = Berkeley PD
        3 = Oakland PD 
        4 = University of California PD
        5 = Immigration and Customs Enforcement (ICE)
        6 = Customs and Border Protection
        7 = New York City PD
        8 = Salt Lake City PD
        9 = Buffalo PD"

        input = gets.chomp()

        if input == "1" 
            puts 
        elsif input == "2"
            puts 
        elsif input == "3"
            puts 
        elsif input == "4"
            puts 
        elsif input == "5"
            puts 
        elsif input == "6"
            puts 
        elsif input == "7"
            puts 
        elsif input == "8"
            puts 
        elsif input == "9"
            puts 
        else 
            puts "Please enter a number 1-9"
        end


    end

end