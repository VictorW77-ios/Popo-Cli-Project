class Popo::Officer 
    attr_accessor :name, :race, :gender, :age, :badge_num

    @@all = []

    def initialize(name=nil, race=nil, gender=nil, age=nil, badge_num=nil)
        @name, @race, @gender, @age, @badge_num = name, race, gender, age, badge_num
        @@all << self
    end

    # def self.all 
    #     @@all
    # end

    # def self.find(info)
    #     self.all[i-1]
    # end

    def self.officer_scrape
        officers = []
        
        officers << self.chicago_officers

        officers
        
    end

    def self.officer_one
        doc = Nokogiri::HTML(open("https://openoversight.com/department/1?gender=Not+Sure&min_age=16&rank=Not+Sure&race=Not+Sure&page=1&max_age=100&from_search=False"))

        officer = self.new
        officer.name = doc.css("div.col-md-6.col-xs-12 a").children[0..3].text.tr("\n"," ").split.join(' ')
        # officer.race = 
        # officer.gender = 
        # officer.age = 
        # officer.badge_num = 
        # chicago_info = doc.css("div.col-md-6.col-xs-12").children[4..32].text.split.join(' ')
       
    end

    def self.officer_two

    end 

    def self.officer_three

    end 

    def self.officer_four
        
    end
end