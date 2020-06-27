class Popo::CLI

    def call 
        intro
        user_menu
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

        if input.to_i == 1 
            the_department = @departments[input.to_i-1]
            puts "\nYou entered: #{the_department}"
            puts "\n"
            finding_chi_officers
        elsif input.to_i == 2 
            puts "\nYou entered: #{the_department}"
            puts "\n"
            finding_ny_officers
        elsif input == "back"
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
        input = gets.strip.to_i

        @officers = Popo::Officer.chicago_list

        @officers.each_with_index(1) do |officer, i|
            puts "#{i}. #{officer.name}"
        end

        chi_officer_info

    end 

    def finding_ny_officers 
        puts "Enter the number of the officer you want more information on:" 
        puts "\n"
        input = gets.strip.to_i

        @officers = Popo::Officer.ny_list

        @officers.each_with_index(1) do |officer, i| 
            puts "#{i}. #{officer.name}"
        end

        ny_officer_info

    end 

    def chi_officer_info
        puts "        Name: #{officer.name}     "
        puts "Race: #{officer.race}     Sex: #{officer.gender}"
        puts "Age: #{officer.age}       Badge #: #{officer.badge_num}"
    end 

    def ny_officer_info 
        puts "        Name: #{officer.name}     "
        puts "Race: #{officer.race}     Sex: #{officer.gender}"
        puts "Age: #{officer.age}       Badge #: #{officer.badge_num}"
    end 
 
        

end