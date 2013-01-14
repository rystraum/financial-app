class ExpensesController < ApplicationController

	before_filter :find_project, except: [:destroy]
	before_filter :find_expense, except: [:create, :new]
	before_filter :new_expense, only: [:create, :new]
	before_filter :find_expenses, only: [:index]

	def index
		@expenses
	end

	def show
		@expense
	end

	def new
		@expense
	end

	def create
		@expense
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
		@expense.destroy
		redirect_to :back
	end

	private
	def find_project
		@project = Project.find params[:id]
	end

	def find_expenses
		@expenses = @project.expenses.all
	end

	def find_expense
		@expense = Expense.find params[:id]
	end

	def new_expense
		@expense = @project.expenses.new params[:expense]
	end

end
