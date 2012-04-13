class Answer < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :question
  attr_accessible :choice, :question
end
