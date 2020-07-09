class Popo::Scraper

    def self.get_page 
        Nokogiri::HTML(open("https://openoversight.com/department/1"))
        # binding.pry
        # name & badge num : doc.css("div.col-md-6.col-xs-12 h2").text 
        # names : doc.css("div.col-md-6.col-xs-12 h2 a").text.split.join(' ')
        # badge nums : doc.css("div.col-md-6.col-xs-12 h2 small").text.tr("#", " ").split.join(' ') 

    end 

    def officers_scrape # scraped by index
        self.get_page.css("div.col-md-6.col-xs-12 h2").text
    end 

    def make_officers
        officers_scrape.each do |officer| # iterated over each officer
            Popo::Officer.new_officer_by_index(officer)
        end
    end 

end 