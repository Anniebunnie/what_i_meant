class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :song_id

  has_many :posts
  has_many :comments, through: :posts

  def write_post(said)
    Post.create!(said: said)
  end

  def search_lyrics(meant)
    
  end

  def 

  def submit_said(said)
    Post.create!{
      said: said
      meant: meant
    }

end
end
