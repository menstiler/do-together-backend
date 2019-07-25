class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :events, :groups, :users
end
