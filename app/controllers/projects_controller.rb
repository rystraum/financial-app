class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find params[:id]
		@expenses = @project.expenses
	end

	def new
		@project = Project.new params[:project]
	end

	def create
		@project = Project.new params[:project]

		if @project.save
			flash[:success] = "Project Created"
			redirect_to @project
		else
			render 'new'
		end

	end

	def edit
	end

	def update
	end

	def destroy
		@project = Project.find params[:id]
		@project.destroy
	end

end
