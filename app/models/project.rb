class Project < ActiveRecord::Base
  attr_accessible :description, :name, :priority
  has_and_belongs_to_many :users
  belongs_to :priority
  extend PriorityFinders
end
