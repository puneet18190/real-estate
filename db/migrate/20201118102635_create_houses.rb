class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :owner
      t.string :address
      t.integer :rooms, default: 0
      t.integer :sqmt, default: 0
      t.integer :floors, default: 0
      t.boolean :air_cond, default: false
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
