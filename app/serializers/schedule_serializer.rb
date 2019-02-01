class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date, :shift_id, :associate_id, :department_id
  # belongs_to :shift

end
