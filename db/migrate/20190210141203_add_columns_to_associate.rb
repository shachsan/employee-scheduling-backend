class AddColumnsToAssociate < ActiveRecord::Migration[5.2]
  def change
    add_column :associates, :monday, :boolean
    add_column :associates, :tuesday, :boolean
    add_column :associates, :wednesday, :boolean
    add_column :associates, :thursday, :boolean
    add_column :associates, :friday, :boolean
    add_column :associates, :saturday, :boolean
    add_column :associates, :sunday, :boolean
  end
end
