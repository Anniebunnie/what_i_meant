require 'spec_helper'

describe Post do
	describe "User will create a post" do 
		before do 
			@user = User.new
			@user.name = "Michael Jackson"
			@user.email = "aj.kim84@gmail.com"
			@user.password = "password"
			@user.save!
			@song = Song.new
			@mood = Mood.new
			@user.write_post("Not my son", @song, @mood)
		end
		it "will associate a post to a user" do
			@user.posts.last.said.should ==  "Not my son"
		end
		it "has the right mood" do
            @user.posts.last.song.should == @song
		end
	end
end
	
