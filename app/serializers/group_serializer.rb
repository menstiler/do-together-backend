class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :activities, :creator, :users, :description
  has_many :events, include_nested_associations: true
  has_many :users, include_nested_associations: true
end
