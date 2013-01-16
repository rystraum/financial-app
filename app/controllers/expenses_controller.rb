class ExpensesController < ApplicationController

	def new
		@project = Project.find params[:project_id]
		@expense = @project.expenses.build
	end

	def create
		@project = Project.find params[:project_id]
		@expense = @project.expenses.build params[:expense]
		if @expense.save
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
		@project = Project.find params[:project_id]
		@expense = @project.expenses.find params[:id]
		@expense.destroy
		redirect_to :back
	end

end
