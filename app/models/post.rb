class Post < ActiveRecord::Base
  attr_accessible :said, :meant, :song_id, :user_id, :mood_id, :song, :mood

  belongs_to :mood
  belongs_to :song
  belongs_to :user
  has_many :commenters, through: :comments, source: :user
  has_many :comments


def user_comments(commenter, comment)
	self.comments << comment
	comment.user = commenter
end

end
