class CreateCommercialUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :commercial_units do |t|
      t.string :owner
      t.string :address
      t.integer :shops, default: 0
      t.integer :sqmt, default: 0
      t.integer :parking, default: 0
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
