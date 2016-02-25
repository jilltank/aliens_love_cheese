class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :instance
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
