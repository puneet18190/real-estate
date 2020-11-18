class CreateComplexBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :complex_buildings do |t|
      t.string :owner
      t.string :address
      t.integer :units, default: 0
      t.integer :sqmt, default: 0
      t.decimal :price, default: 0.0

      t.timestamps
    end
  end
end
