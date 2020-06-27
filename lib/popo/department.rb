class Popo::Department
    attr_reader :name 

    def self.chosen_dep
        self.scrape_dep
    end

    def self.scrape_dep
        departments = []

        departments << self.scrape_chicago
        departments << self.scrape_ny
      #I want to return real data 

        departments 
    end

    def self.scrape_chicago
        doc = Nokogiri::HTML(open("https://openoversight.com/browse"))
        
        chi = self.new
        chi.name = doc.css(".btn-group").children[14].text[0..24].strip
        #chi_officers = doc.css("a.btn.btn-lg.btn-primary")[4]["href"]
    end

    def self.scrape_ny
        doc = Nokogiri::HTML(open("https://openoversight.com/browse"))

        ny = self.new
        ny.name = doc.css(".btn-group h2").last.text.strip
        #ny_officers = doc.css("a.btn.btn-lg.btn-primary")[9]["href"]
    end

end