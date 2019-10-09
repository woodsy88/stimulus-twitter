class Project < ApplicationRecord
  
  # allows you to create a project with tasks at the same time without throwing an belongs_to exception error
  has_many :tasks, inverse_of: :project
 
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
end
