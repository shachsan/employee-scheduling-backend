class CreateDeptManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :dept_managers do |t|
      t.string :name

      t.timestamps
    end
  end
end
