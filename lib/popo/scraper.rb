class Scraper < Officer
    include Popo

    def initialize(name, race, gender, badge_num)
        super(name, race, gender, badge_num)
    end 
    # defining an initialize method here chains this 
    # to the initialize method in the Officer class. 
    # This " chained method " assigns values to @name, @race, etc..
    # NOTE: find a way for Scraper class to inherit Officer attrributes
    # amd assign those attr's values in my scrape_openoversight method
    def self.get_page 
        self.officers_scrape
    end 

    def self.officers_scrape 
        officers = [] 
        # binding.pry

        officers << self.scrape_openoversight

        officers
    end 

    def self.scrape_openoversight
        doc = Nokogiri::HTML(open("https://openoversight.com/department/1"))
        # binding.pry
        officer = self.new
        
        officer.name = doc.css("h2 a").map {|el| el.text.strip.tr("\n", " ") }
        officer.race = doc.css("dd").map {|el| el.text.strip}
        officer.gender = doc.css("dd").map {|el| el.text.strip}
        # doc.css("dd").map {|el| el.text.strip} returns an array 
        # of all officer attributes (rank, race, gender, num of photos) 
        # I DON'T WANT/NEED THIS 
        # I need to find a way to return JUST the races and genders of the officers.
        # maybe interation like with name & badge_num? 
        # or dynamic interpolation?  
        officer.badge_num = doc.css("h2 small").map {|el| el.text.strip}

        officer
    end 

    # def create_officers
    #     officers_scrape.each do |officer| # iterated over each officer
    #         Popo::Officer.new_officer_by_index(officer)
    #     end
    # end
            
end 