class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.string :title
      t.time :start_time
      t.time :end_time
      t.integer :hour

      t.timestamps
    end
  end
end
