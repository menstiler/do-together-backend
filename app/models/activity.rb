class Activity < ApplicationRecord
  has_many :events
  has_many :groups, through: :events
end
