class DeptShiftSerializer < ActiveModel::Serializer
  attributes :id, :no_of_shift, :department_id, :shift_id
end
