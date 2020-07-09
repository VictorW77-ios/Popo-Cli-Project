class Popo::Officer 
    attr_accessor :name, :race, :gender, :age, :badge_num

    @@all = []

    def self.new_officer_by_index(officer)
        self.new(doc.css(""))

    end 

    def initialize(name, race, gender, badge_num, age)
        @name = name 
        @race = race
        @gender = gender 
        @badge_num = badge_num 
        @age = age 

        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def self.find(i)
        self.all[i-1]
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