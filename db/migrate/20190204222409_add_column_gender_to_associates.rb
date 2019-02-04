class AddColumnGenderToAssociates < ActiveRecord::Migration[5.2]
  def change
    add_column :associates, :gender, :string
  end
end
