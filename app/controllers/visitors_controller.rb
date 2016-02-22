class VisitorsController < ApplicationController
	def index
    	@commands = Command.all
  	end
end
