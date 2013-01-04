class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find params[:id]
		@expenses = @project.expenses
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destory
	end

end
