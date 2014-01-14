class Post < ActiveRecord::Base
  attr_accessible :said, :meant, :song_id, :user_id, :mood_id

  belongs_to :mood
  belongs_to :song
  belongs_to :user
  has_many :commenters, through: :comments, source: :user
  has_many :comments

def join_comment(comment)
	self.comments << comment
end

def join_songs(song)
	self.songs << song
end

end
