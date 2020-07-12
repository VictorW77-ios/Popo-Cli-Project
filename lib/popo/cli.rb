# The CLI classes houses the code responsible for the user interface

class Popo::CLI

    def call 
        Popo::Scraper.make_officers # routes to Scraper class #make_officers method
        general_list
        choose_officer
        exit_message
    end

    def general_list
        puts "--------".colorize(:red) + "Welcome to the Chicago PD Officer Finder" + "--------".colorize(:red)
        puts "\n"
        Popo::Officer.list_officers # routes to Officer class #list_officers method
        puts "\n"
        puts "Enter the number of the officer you want more information on:"
        puts "\n"
    end


    def choose_officer
        input = ""
        while input != "exit"
            input = gets.strip.downcase
            if input.to_i.between?(1, Popo::Officer.all.length) # better range instead of "1, 20" - also makes it easier to refactor later on
                Popo::Officer.list_officer_info(input)
                puts "\n"
                puts "Enter another number to see the coinciding officer"
                puts "Type" + " 'back'".colorize(:red) + " to go to the main menu"
            elsif input == "back"
                general_list
            else 
                puts "Please enter a number 1-20. Type 'back' to go back or 'exit' to exit.".colorize(:blue) if input != "exit"
            end
        end

    end 

    def exit_message 
        puts "-----" + " Stay informed! ".colorize(:red) + "-----"
    end 
        



end