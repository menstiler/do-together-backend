class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :users, :activities, :creator
  has_many :events, include_nested_associations: true
end
