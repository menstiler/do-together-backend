class EventSerializer < ActiveModel::Serializer
  attributes :id, :group, :activity, :time, :name, :creator
end
