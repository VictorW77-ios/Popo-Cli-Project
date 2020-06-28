class Popo::Department
    attr_accessor :name 

    def initialize
        @name = name
    end 

    def self.chicago_pd
        self.scrape_dep
    end

    def self.scrape_dep
        departments = []

        departments << self.scrape_chicago
      #I want to return real data 

        departments 
    end

    def self.scrape_chicago
        doc = Nokogiri::HTML(open("https://openoversight.com/browse"))

        chi = self.new
        chi.name = doc.css(".btn-group").children[14].text[0..24].strip
        #chi_officers = doc.css("a.btn.btn-lg.btn-primary")[4]["href"]
    end

end