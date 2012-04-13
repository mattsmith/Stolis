class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :quiz
      t.references :question
      t.string :choice

      t.timestamps
    end
    add_index :answers, :quiz_id
    add_index :answers, :question_id
  end
end
