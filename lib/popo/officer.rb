class Popo::Officer 
    attr_accessor :name, :race, :gender, :age, :badge_num

    # @@all = []

    # def initialize(name=nil, race=nil, gender=nil, age=nil, badge_num=nil)
    #     @name, @race, @gender, @age, @badge_num = name, race, gender, age, badge_num
    #     @@all << self
    # end

    def self.officer_scrape
        officers = []
        
        officers << self.scrape_one
        officers << self.scrape_two
        officers << self.scrape_three
        officers << self.scrape_four

        officers
        
    end

    def self.scrape_one 
        doc = Nokogiri::HTML(open("https://openoversight.com/officer/11943"))
        officer = self.new
        officer.name = doc.css("table.table.table-hover tr td").children[1].text.split.join(' ')
        officer.race = doc.css("table.table.table-hover tr td").children[9].text
        officer.gender = doc.css("table.table.table-hover tr td").children[11].text
        officer.age = doc.css("table.table.table-hover tr td").children[13].text.gsub("None (None)", "Unknown")
        officer.badge_num = doc.css("table.table.table-hover tbody tr td").children[17].text
    end

    def self.scrape_two
        doc = Nokogiri::HTML(open("https://openoversight.com/officer/11942"))
        officer = self.new
        officer.name = doc.css("table.table.table-hover tr td").children[1].text.split.join(' ')
        officer.race = doc.css("table.table.table-hover tr td").children[9].text
        officer.gender = doc.css("table.table.table-hover tr td").children[11].text
        officer.age = doc.css("table.table.table-hover tr td").children[13].text
        officer.badge_num = doc.css("table.table.table-hover tr td").children[17].text
    end 

    def self.scrape_three
        doc = Nokogiri::HTML(open("https://openoversight.com/officer/11944"))
        officer = self.new
        officer.name = doc.css("table.table.table-hover tr td").children[1].text.split.join(' ')
        officer.race = doc.css("table.table.table-hover tr td").children[9].text
        officer.gender = doc.css("table.table.table-hover tr td").children[11].text
        officer.age = doc.css("table.table.table-hover tr td").children[13].text
        officer.badge_num = doc.css("table.table.table-hover tr td").children[17].text
    end 

    def self.scrape_four
        doc = Nokogiri::HTML(open("https://openoversight.com/officer/11945"))
        officer = self.new
        officer.name = doc.css("table.table.table-hover tr td").children[1].text.split.join(' ')
        officer.race = doc.css("table.table.table-hover tr td").children[9].text
        officer.gender = doc.css("table.table.table-hover tr td").children[11].text
        officer.age = doc.css("table.table.table-hover tr td").children[13].text
        officer.badge_num = doc.css("table.table.table-hover tr td").children[17].text

    end
end