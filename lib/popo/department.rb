class Popo::Department
    attr_accessor :name, :officers, :url

    def self.chosen_dep
        self.scrape_dep
    end

    def self.scrape_dep
        departments = []

        departments << self.scrape_site
      #I want to return real data 

        departments 
    end

    def self.scrape_site
        doc = Nokogiri::HTML(open("https://openoversight.com/browse"))
        binding.pry
    end

end