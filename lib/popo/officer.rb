class Popo::Officer 
    attr_accessor :name, :race, :gender, :badge_num

    @@all = []

    def initialize(name, race, gender, badge_num)
        @name = name 
        @race = race
        @gender = gender 
        @badge_num = badge_num 

        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def get_officer_details 
        Popo::Scraper.officer_scrape
    end 
    
    # def self.find_officer # tells program to find the corresponding officer's name
    #     @@all.detect {|officer| officer.name == name} # double equals comparison operator
    # end 

    # def self.find_info_between_markers(marker1, marker2)
    #    self[/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m, 1] # putting the m modifier after the regex allows this method to search beyond just one line
    # end 

    # def reading_officers

    # end 

    # make separate file for scraping 
   
end