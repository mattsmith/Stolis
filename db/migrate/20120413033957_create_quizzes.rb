class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :email
      t.string :cocktail

      t.timestamps
    end
  end
end
