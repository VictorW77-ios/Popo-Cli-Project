class Popo::Scraper
    attr_accessor :name, :race, :gender, :badge_num

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

        officer = self.new 
        
        officer.name = doc.css("h2 a").text.strip.split.join(' ')
        # name.split.map()
        officer.race = doc.search("div.col-md-6.col-xs-6").text.split.join(' ')
        officer.gender = doc.search("div.col-md-6.col-xs-6").text.split.join(' ')
        officer.badge_num = doc.css("div.col-md-6.col-xs-12 h2 small").text.tr("#", " ").split.join(' ')

        officer
    end 

    # def create_officers
    #     officers_scrape.each do |officer| # iterated over each officer
    #         Popo::Officer.new_officer_by_index(officer)
    #     end
    # end
            
end 