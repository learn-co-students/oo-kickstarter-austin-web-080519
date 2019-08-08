# relates to other files associated with this one
require_relative "project"

# define a class
class Backer
    # getter (retrieves information for backers & title)
    
        attr_reader :name, :backed_projects
    # intitialize an instance that takes a name as an argument (intialize = .new)
        def initialize(name)
            @name = name
            @backed_projects = []
        end
        
        def back_project(project)
            # shoveling projects into our array of projects
            @backed_projects << project
           #updates the project file (with an extra line of logic to avoid an infinite loop)
            project.add_backer(self) if !project.backers.include?(self)
        end



end
    

