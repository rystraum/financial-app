class Expense < ActiveRecord::Base
  attr_accessible :amount, :description, :name

  belongs_to :projects
end
