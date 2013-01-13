class Project < ActiveRecord::Base
  attr_accessible :description, :name, :budget

  has_many :expenses

  validates :name, presence: true
  validates :budget, presence: true

end
