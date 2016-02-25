class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :wrong1
      t.string :wrong2
      t.string :right
      t.string :confirmation
      t.string :clue
      t.string :video
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
