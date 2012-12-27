class Project < ActiveRecord::Base
  attr_accessible :description, :name, :budget

  has_many :expenses
end
