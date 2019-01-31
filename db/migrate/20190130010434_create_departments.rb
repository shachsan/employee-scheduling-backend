class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.references :dept_manager, foreign_key: true

      t.timestamps
    end
  end
end
