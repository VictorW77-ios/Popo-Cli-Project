class Popo::Scraper

    def get_page 
        Nokogiri::HTML(open("https://openoversight.com/department/1"))
        binding.pry
    end 

end 