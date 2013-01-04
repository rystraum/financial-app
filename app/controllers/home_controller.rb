class HomeController < ApplicationController

	def index
		@projects = Project.last(12)
	end

end
