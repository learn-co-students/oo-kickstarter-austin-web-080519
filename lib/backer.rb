require "project"
class Backer 
   attr_reader :name, :backed_projects

        def initialize(name,backed_projects= [])

            @name = name 
            @backed_projects = backed_projects
            

        end 
        def back_project(project)
            @backed_projects << project 
            project.add_backer(self) 
        end 
        
end 
