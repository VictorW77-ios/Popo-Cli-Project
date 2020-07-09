class Popo::Scraper

    def self.get_page 
        self.officers_scrape
        # name & badge num : doc.css("div.col-md-6.col-xs-12 h2").text 
        # names : doc.css("div.col-md-6.col-xs-12 h2 a").text.split.join(' ')
        # badge nums : doc.css("div.col-md-6.col-xs-12 h2 small").text.tr("#", " ").split.join(' ') 

    end 

    def self.officers_scrape # scraped by index
        officers = [] 

        officers << self.scrape_openoversight
    end 

    def self.scrape_openoversight
        doc = Nokogiri::HTML(open("https://openoversight.com/department/1"))
        # binding.pry
        officer = self.new 
        officer.name = doc.css("div.col-md-6.col-xs-12 h2 a").text.split.join(' ')
        # officer.race = 
        # officer.gender = 
        officer.badge_num = doc.css("div.col-md-6.col-xs-12 h2 small").text.tr("#", " ").split.join(' ')
        
        
    end 

    # def create_officers
    #     officers_scrape.each do |officer| # iterated over each officer
    #         Popo::Officer.new_officer_by_index(officer)
    #     end
    # end
            
end 