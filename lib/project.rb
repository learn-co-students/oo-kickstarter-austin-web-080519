require_relative('backer')
require 'pry'

class Project
   attr_reader :backers, :title
   attr_accessor
   
   def initialize(title)
        @title = title
        @backers = []
   end
   
   def add_backer(backer)
       @backers << backer
       #backer.back_project(self) if !@backers.include?(backer)
       backer.backed_projects << self
       #binding.pry
   end



end