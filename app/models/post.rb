class Post < ActiveRecord::Base
  attr_accessible :said, :meant, :song_id, :user_id, :mood_id, :song, :mood

  belongs_to :mood
  belongs_to :song
  belongs_to :user
  has_many :commenters, through: :comments, source: :user
  has_many :comments

def submit_mood(mood, song)
 	self.moods << Post.create!(mood: mood, song: song)
end

def join_songs(song)
	self.songs << song
end

end
