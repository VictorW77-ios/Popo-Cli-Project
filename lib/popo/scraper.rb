# The Scraper class' job is to scrape info from openoversight.com

class Popo::Scraper
    
    def self.get_page 
        Nokogiri::HTML(open("https://openoversight.com/department/1"))
    end 

    def self.get_officer_info
        self.get_page.css(".list-group-item")
    end 

    def self.make_officers # creates new instances of an Officer // defines it's attributes
        self.get_officer_info.each { |element| 
            name = element.css("h2 a").map {|n| n.text.strip.tr("\n", " ") } # returns a string within an array -- looks cool
            race = element.css(".list-group-item > div.row > div:last-child > .row > div:first-child > dl > dd:last-child").map { |r| r.text.strip.split(/([[:upper:]][[:lower:]]*)/).join("") }
            gender = element.css(".list-group-item > div.row > div > .row > div:last-child > dl > dd").map { |g| g.text.delete("0").scan /\w/ }.reject(&:empty?)
            badge_num = element.css("h2 small").map {|bn| bn.text.strip}

            Popo::Officer.new(name, race, gender, badge_num) # creates a new instance of an Officer 
        }
    end 

end 