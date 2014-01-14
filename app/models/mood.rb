class Mood < ActiveRecord::Base
  attr_accessible :type

  has_many :posts

  def submit_mood(mood)
 	self.posts << Post.create!(mood: mood)
  end
 
end
