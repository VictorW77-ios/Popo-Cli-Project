class Popo::Officer 
    attr_accessor :name, :race, :gender, :age, :badge_number

    def initialize 
        @name, @race, @gender, @age, @badge_number = name, race, gender, age, badge_number
    end
    
    def self.scrape_source
        officer_info = []
        officer_info << self.site_scrape

        officer_info
    end

    def site_scrape
        doc = Nokogiri::HTML(open("https://openoversight.com/"))

        officer = self.new 
        officer.name = 
        officer.race = 
        officer.gender =
        officer.age = 
        officer.badge_number = 

        officer
    end
end