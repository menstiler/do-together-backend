class Event < ApplicationRecord
  belongs_to :group
  belongs_to :activity
  has_many :attendees, dependent: :destroy
end
