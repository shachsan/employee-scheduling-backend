class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :dept_manager_id
      t.integer :associate_id

      t.timestamps
    end
  end
end
