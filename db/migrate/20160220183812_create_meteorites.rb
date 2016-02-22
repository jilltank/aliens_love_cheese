class CreateMeteorites < ActiveRecord::Migration
  def change
    create_table :meteorites do |t|
      t.string :name
      t.string :year
      t.float :lat
      t.float :long
      t.integer :nacho_id

      t.timestamps null: false
    end
  end
end
