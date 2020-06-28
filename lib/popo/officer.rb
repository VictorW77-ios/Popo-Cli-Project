class Popo::Officer 
    attr_accessor :name, :race, :gender, :age, :badge_num

    @all = []

    def initialize(name=nil, race=nil, gender=nil, age=nil, badge_num=nil)
        @name, @race, @gender, @age, @badge_num = name, race, gender, age, badge_num
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.find(info)
        self.all[i-1]
    end

    # def name 
    #     @name = 
    # end 

    # def race 
    #     @race = 
    # end 

    # def gender 
    #     @gender = 
    # end 

    # def age 
    #     @age = 
    # end 

    # def badge_num 
    #     @badge_num = 
    # end 


    
    def self.officer_scrape
        chicago_list = []
        
        chicago_list << self.chicago_officers

        chicago_list
        
    end

    def self.chicago_officers
        doc = Nokogiri::HTML(open("https://openoversight.com/department/1?gender=Not+Sure&min_age=16&rank=Not+Sure&race=Not+Sure&page=1&max_age=100&from_search=False"))
        # chicago_info = doc.css("div.col-md-6.col-xs-12").children[4..32].text.split.join(' ')
        # ch_name = doc.css("div.col-md-6.col-xs-12 a").children[0..3].text.tr("\n"," ").split.join(' ')
        # ch_race = , 
        # ch_gender = , 
        # ch_age =   ]
       
    end
end