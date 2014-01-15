class Mood < ActiveRecord::Base
  attr_accessible :type

  has_many :posts

  def type
  	array_of_emotions =
  	%w[happy, emo, aggressive, upbeat, relaxed, upbeat, excited]
  end
 


end
