class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :activities, :events, :groups
  has_many :events, include_nested_associations: true
  has_many :groups, include_nested_associations: true
end
