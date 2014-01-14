require 'spec_helper'

describe Post do
	describe "User will create a post" do 
		before do 
			@user = User.new
			@user.name = "Michael Jackson"
			@user.email = "aj.kim84@gmail.com"
			@user.save!
			@said = Post.create(said: "Not my son")
			@user.write_post(@said)
		end
		it "will associate a post to a user" do
			@user.posts.first.should == @said
		end
	end
end
