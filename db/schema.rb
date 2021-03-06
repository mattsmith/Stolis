# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120413040106) do

  create_table "answers", :force => true do |t|
    t.integer  "quiz_id"
    t.integer  "question_id"
    t.string   "choice"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"
  add_index "answers", ["quiz_id"], :name => "index_answers_on_quiz_id"

  create_table "questions", :force => true do |t|
    t.text     "prompt"
    t.string   "choice_1"
    t.string   "choice_2"
    t.string   "choice_3"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "quizzes", :force => true do |t|
    t.string   "email"
    t.string   "cocktail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
