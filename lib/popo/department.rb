class Popo::Department
    attr_accessor :name, :officers, :url

    def self.chosen_dep
        puts <<-DOC.gsub /^\s*/, ''
            1 = Chicago PD 
            2 = New York City PD 
        DOC
        dep_1 = self.new 
        dep_1.name = "Chicago PD"
        dep_1.officers = ""
        dep_1.url = https://openoversight.com/department/1

        dep_2 = self.new 
        dep_2.name = "New York City PD"
        dep_2.officers = ""
        dep_2.url = https://openoversight.com/department/7

        [dep_1, dep_2]

    end

end