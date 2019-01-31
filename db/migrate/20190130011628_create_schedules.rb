class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :date
      t.references :associate, foreign_key: true
      t.references :shift, foreign_key: true

      t.timestamps
    end
  end
end
