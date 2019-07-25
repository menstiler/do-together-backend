class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :events
  has_many :activities, through: :events
end
