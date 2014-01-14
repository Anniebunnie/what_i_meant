# require 'spec_helper'

# describe Mood do
# 	describe "User selects a mood" do
# 		before do
# 		@user = User.new
# 		@user.name = "Tim Allen"
# 		@user.email = "aj.kim84@gmail.com"
# 		@user.password = "password"
# 		@user.save!
# 		@user.submit_mood(mood: "happy", song: "Stacey's Mom")
# 	end
# 		it "will submit a post containing mood and song" do
# 			@user.posts.last.mood.should == "happy"
# 			@user.posts.last.song.should == "Stacey's Mom"
# 		end
# 	end
# end