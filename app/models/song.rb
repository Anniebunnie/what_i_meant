class Song < ActiveRecord::Base
  attr_accessible :title, :artist, :lyric

  has_many :posts
  has_many :users, through: :posts

end
