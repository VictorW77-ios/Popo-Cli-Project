require_relative 'officer'

class Popo::Scraper
    attr_accessor :name, :race, :gender, :badge_num

    def initialize
       @name = name 
       @race = race 
       @gender = gender 
       @badge_num = badge_num
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

        officers << self.scrape_officer_info

        officers
    end 

    def self.scrape_officer_info
        doc = Nokogiri::HTML(open("https://openoversight.com/department/1"))
        officer = self.new
        
        officer.name = doc.css("h2 a").map {|n| n.text.strip.tr("\n", " ") }
        officer.race = doc.css(".list-group-item > div.row > div:last-child > .row > div:first-child > dl > dd:last-child").text.split(/([[:upper:]][[:lower:]]*)/).join(" ").split(",")
        officer.gender = doc.css(".list-group-item > div.row > div > .row > div:last-child > dl > dd").text.delete("0").scan /\w/
        officer.badge_num = doc.css("h2 small").map {|el| el.text.strip}

        officer
    end 

    # def create_officers
    #     officers_scrape.each do |officer| # iterated over each officer
    #         Popo::Officer.new_officer_by_index(officer)
    #     end
    # end
            
end 