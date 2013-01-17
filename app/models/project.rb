class Project < ActiveRecord::Base
  attr_accessible :description, :name, :budget

  has_many :expenses, :dependent => :destroy
  accepts_nested_attributes_for :expenses

  validates :name, presence: true
  validates :budget, presence: true, numericality: true

  def list_expense
  	expenses.map do |i| i.amount end
  end

  def total
  	return budget - list_expense.sum
  end

end
