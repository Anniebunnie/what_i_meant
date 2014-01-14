class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :photo_url, :song, :mood

  has_many :posts
  has_many :comments, through: :posts

  def write_post(said, song, mood)
    self.posts << Post.create!(said: said, song: song, mood: mood)

  end



end
