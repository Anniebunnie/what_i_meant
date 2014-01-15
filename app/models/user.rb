class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :photo_url

  has_many :posts
  has_many :comments, through: :posts

  def write_post(said, song)
    new_post = Post.create!(said: said, song: song)
    self.posts << new_post
    return new_post
  end

  def submit_mood(mood, song)
    new_post = Post.create!(mood: mood, song: song)
    self.posts << new_post
    return new_post
  end



end
