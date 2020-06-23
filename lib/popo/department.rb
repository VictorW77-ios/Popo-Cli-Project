class Popo::Department
    attr_accessor :name, :officers

    def self.chosen_dep
        self.scrape_dep
    end

    def self.scrape_dep
        departments = []

        departments << self.chi_dep
        departments << self.ny_dep
      #I want to return real data 

        departments 
    end

    def self.chicago_dep
        doc = Nokogiri::HTML(open("https://openoversight.com/browse"))
        chi_name = doc.css(".btn-group").children[14].text[0..24].strip
        chi_officers = doc.css("a.btn.btn-lg.btn-primary")[4]["href"]
    end

    def self.ny_dep
        doc = Nokogiri::HTML(open("https://openoversight.com/browse"))
        ny_name = doc.css(".btn-group h2").last.text.strip
        ny_officers = doc.css("a.btn.btn-lg.btn-primary")[9]["href"]
    end

end