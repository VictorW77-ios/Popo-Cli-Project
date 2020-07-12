# The Officer class' job is to house all the attributes and methods associated
# with the officers and their characteristics and communicate that knowledge
# to the CLI class 

class Popo::Officer 
    attr_accessor :name, :race, :gender, :badge_num

    @@all = []

    def initialize(name, race, gender, badge_num)
       @name = name 
       @race = race 
       @gender = gender 
       @badge_num = badge_num

       save_info
    end 

    def self.all 
        @@all
    end

    def save_info 
        @@all << self
    end 

    def self.find_officer(id)
        @@all[id.to_i-1] # looks at array, finds officer by running "index - 1"
    end 

    def self.list_officers 
        self.all.each.with_index(1) do |officer, index|
            puts "#{index}." + " #{officer.name}".colorize(:red)
        end
    end 

    def self.list_officer_info(index)
        officer = self.find_officer(index)
        puts " ----------------------------------------------------------------------------------- "
        puts "|                    Name: ".colorize(:red) + "#{officer.name}                      |"
        puts "|                    Badge #: ".colorize(:red) + "#{officer.badge_num}              |"
        puts "|                    Race: ".colorize(:red) + "#{officer.race}                      |" 
        puts "|                    Sex:".colorize(:red) + "#{officer.gender}                      |"
        puts " ----------------------------------------------------------------------------------- "
    end 
   
end