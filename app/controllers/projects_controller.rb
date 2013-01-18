class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find params[:id]
		@expenses = @project.expenses
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new params[:project]

		if @project.save
			flash[:success] = "Project Budget Created"
			redirect_to @project
		else
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:id]
		@expenses = @project.expenses
	end

	def update
		@project = Project.find params[:id]
		if @project.update_attributes params[:project]
			flash[:success] = "Project Budget Updated"
			redirect_to @project
		else
			flash[:error] = "Sorry we did something wrong."
			render 'edit'
		end
	end

	def destroy
		@project = Project.find params[:id]
		@project.destroy
		redirect_to 'index'
		flash[:success] = "#{@project.name} Deleted"
	end

end
