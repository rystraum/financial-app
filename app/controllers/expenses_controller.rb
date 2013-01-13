class ExpensesController < ApplicationController

	def index
		@project = Project.find params[:id]
		@expenses = @project.expenses.all
	end

	def show
		@project = Project.find params[:id]
		@expense = @project.expenses.find params[:id]
	end

	def new
		@project = Project.find params[:id]
		@expense = @project.expenses.build params[:expense]
	end

	def create
		@project = Project.find params[:id]
		@expense = @project.expenses.new params[:expense]
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

	end

end
