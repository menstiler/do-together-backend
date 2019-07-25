class Activity < ApplicationRecord
  has_many :events
  has_many :groups, through: :events
  has_many :users, through: :groups
end
