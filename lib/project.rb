# relates to other files associated with this one
require_relative "backer"

#define a class
class Project
# getter (retrieves information for backers & title)

    attr_reader :backers, :title
# intitialize an instance that takes a name as an argument (intialize = .new)
    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        @backers << backer
        #
        backer.back_project(self) if !backer.backed_projects.include?(self)
    end
end
