class CreateAssociates < ActiveRecord::Migration[5.2]
  def change
    create_table :associates do |t|
      t.string :name
      t.string :position
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
