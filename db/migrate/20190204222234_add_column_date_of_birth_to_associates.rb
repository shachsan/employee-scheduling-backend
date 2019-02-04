class AddColumnDateOfBirthToAssociates < ActiveRecord::Migration[5.2]
  def change
    add_column :associates, :date_of_birth, :date
  end
end
