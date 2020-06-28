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
        
        officers << self.officer_one
        officers << self.officer_two
        officers << self.officer_three
        officers << self.officer_four

        officers
        
    end

    def self.officer_one 
        doc = Nokogiri::HTML(open("https://openoversight.com/officer/11943"))
        officer = self.new
        # officer.name = doc.css("table.table.table-hover tr td").children[1].text.split.join(' ')
        # officer.race = doc.css("table.table.table-hover tr td").children[9].text
        # officer.gender = doc.css("table.table.table-hover tr td").children[11].text
        # officer.age = doc.css("table.table.table-hover tr td").children[13].text.gsub("None (None)", "Unknown")
        # officer.badge_num = doc.css("table.table.table-hover tbody tr td").children[17].text
       
    end

    def self.officer_two
        doc = Nokogiri::HTML(open("https://openoversight.com/officer/11942"))
        binding.pry
        officer = self.new
        # officer.name = doc.css("div.col-md-6.col-xs-12 a").children[0].text.tr("\n"," ").split.join(' ')
        # officer.race = 
        # officer.gender = 
        # officer.age = 
        # officer.badge_num = 
    end 

    def self.officer_three
        officer = self.new
        # officer.name = doc.css("div.col-md-6.col-xs-12 a").children[0].text.tr("\n"," ").split.join(' ')
        # officer.race = 
        # officer.gender = 
        # officer.age = 
        # officer.badge_num = 

    end 

    def self.officer_four
        officer = self.new
        # officer.name = doc.css("div.col-md-6.col-xs-12 a").children[0].text.tr("\n"," ").split.join(' ')
        # officer.race = 
        # officer.gender = 
        # officer.age = 
        # officer.badge_num = 

    end
end