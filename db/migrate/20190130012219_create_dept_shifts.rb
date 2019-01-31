class CreateDeptShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :dept_shifts do |t|
      t.integer :no_of_shift
      t.references :department, foreign_key: true
      t.references :shift, foreign_key: true

      t.timestamps
    end
  end
end
