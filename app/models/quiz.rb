class Quiz < ActiveRecord::Base
  has_many :answers, dependent: :destroy

  attr_accessible :cocktail, :email, :answers_attributes

  validates :email, format: {with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}, on: :update

  accepts_nested_attributes_for :answers
end
