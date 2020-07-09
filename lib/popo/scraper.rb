class Popo::Scraper

    def self.get_page 
        doc = Nokogiri::HTML(open("https://openoversight.com/department/1"))
        binding.pry
    end 

end 