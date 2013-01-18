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
		@project = Project.find params[:project_id]
		@expense = @project.expenses.find params[:id]
	end

	def update
		@project = Project.find params[:project_id]
		@expense = @project.expenses.find params[:id]
		if @expense.update_attributes params[:expense]
			flash[:success] = "Expense Updated"
			redirect_to @project
		else
			flash[:error] = "Sorry we did something wrong."
			render 'edit'
		end
	end

	def destroy
		@project = Project.find params[:project_id]
		@expense = @project.expenses.find params[:id]
		@expense.destroy
		flash[:success] = "Expense Deleted"
		redirect_to :back
	end

end
