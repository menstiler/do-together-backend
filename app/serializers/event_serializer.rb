class EventSerializer < ActiveModel::Serializer
  attributes :id, :group, :activity, :time
end
