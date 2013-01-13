class Expense < ActiveRecord::Base
  attr_accessible :amount, :description, :name

  belongs_to :project

  validates :amount, presence: true
  validates :name, presence: true
end
