class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state
      t.float :latitude
      t.float :longitude
      t.integer :nearest_meteorite1
      t.integer :nacho1
      t.integer :nearest_meteorite2
      t.integer :nacho2
      t.integer :nearest_meteorite3
      t.integer :nacho3

      t.timestamps null: false
    end
  end
end
