class Project < ActiveRecord::Base
  attr_accessible :description, :name, :budget

  has_many :expenses, :dependent => :destroy


  validates :name, presence: true
  validates :budget, presence: true, numericality: true

  def summary
    "#{name} : #{total}/#{budget}"
  end

  def list_expense
  	expenses.map do |i| i.amount end
  end

  def total
  	return budget - list_expense.sum
  end

end
