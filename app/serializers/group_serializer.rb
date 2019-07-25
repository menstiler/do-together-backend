class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :users, :activities
  has_many :events, include_nested_associations: true
end
