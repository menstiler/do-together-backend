class EventSerializer < ActiveModel::Serializer
  attributes :id, :group, :activity, :time, :name, :creator, :attendees
  has_many :attendees, include_nested_associations: true
end
