class Quiz < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  attr_accessible :cocktail, :email

  accepts_nested_attributes_for :answers
end
