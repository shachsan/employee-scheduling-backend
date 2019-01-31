class AddHoursPerWeekToAssociates < ActiveRecord::Migration[5.2]
  def change
    add_column :associates, :hours_per_week, :integer
  end
end
