class AddDepartmentIdToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :department_id, :integer
  end
end
