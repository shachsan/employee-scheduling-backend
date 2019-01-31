class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :dept_manager_id
  has_many :associates
  # has_many :schedules
end
