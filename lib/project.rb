class Project

    attr_accessor :title 

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers 
        
        project_backs = ProjectBacker.all.select{ |project_back| project_back.project == self }

        project_backs.map{ |back| back.backer}

    end 

end 