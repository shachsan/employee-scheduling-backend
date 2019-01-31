class ShiftSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time
  has_many :schedules
end
