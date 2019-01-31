class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date, :shift_id, :associate_id, :department_id, :start_time, :end_time
  # belongs_to :shift

  def start_time
    object.shift.start_time
  end 

  def end_time
    object.shift.end_time
  end 

end
