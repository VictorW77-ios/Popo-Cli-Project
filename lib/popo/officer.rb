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
    


    # def self.chicago 
    #     self.officer_scrape
    # end 

    # def self.officer_scrape
    #     officers = []
        
    #     officers << self.scrape_one
    #     officers << self.scrape_two
    #     officers << self.scrape_three
    #     officers << self.scrape_four

    #     officers
        
    # end

    # def reading_officers

    # end 

    # make separate file for scraping 
   
end