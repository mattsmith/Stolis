class Question < ActiveRecord::Base
  attr_accessible :choice_1, :choice_2, :choice_3, :prompt

  def self.random
    order('random()').limit(3)
  end
end
