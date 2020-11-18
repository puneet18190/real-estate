class AddOwnerEmailToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :owner_email, :string
    add_column :complex_buildings, :owner_email, :string
    add_column :commercial_units, :owner_email, :string
  end
end
