class Backer

    attr_accessor :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        
        project_backs = ProjectBacker.all.select{ |project_back| project_back.backer == self }

        project_backs.map{ |back| back.project }
        
    end 

end