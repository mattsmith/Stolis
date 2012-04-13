class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :prompt
      t.string :choice_1
      t.string :choice_2
      t.string :choice_3

      t.timestamps
    end
  end
end
