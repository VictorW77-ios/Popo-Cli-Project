class Popo::Officer 
    attr_accessor :name, :race, :gender, :age, :badge_number

    def initialize 
        @name, @race, @gender, @age, @badge_number = name, race, gender, age, badge_number
    end
    
    def self.officer_scrape
        chicago_list = []
        ny_list = []
        
        chicago_list << self.chicago_officers
        ny_list << self.ny_officers

        
    end

    def self.chicago_officers
        doc = Nokogiri::HTML(open("https://openoversight.com/department/1?gender=Not+Sure&min_age=16&rank=Not+Sure&race=Not+Sure&page=1&max_age=100&from_search=False"))

        officer = self.new 
        officer.name = 
        officer.race = 
        officer.gender =
        officer.age = 
        officer.badge_number = 

        officer
    end

    def self.ny_officers
        doc = 
    end 
end