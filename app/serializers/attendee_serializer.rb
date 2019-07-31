class AttendeeSerializer < ActiveModel::Serializer
  attributes :id, :user, :event
  has_one :event, include_nested_associations: true
end
