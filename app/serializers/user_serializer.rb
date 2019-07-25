class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :groups, :events, :activities
end
