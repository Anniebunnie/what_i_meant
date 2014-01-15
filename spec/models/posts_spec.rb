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
			@user.write_post("Not my son", @song)
		end
		it "will associate a post to a user" do
			@user.posts.last.said.should ==  "Not my son"
		end
		it "has the right mood" do
            @user.posts.last.song.should == @song
		end
	end
	describe "User will submit mood and search" do 
		before do 
			@deedoo = User.new
			@deedoo.name = "Tweeter Dee Doo"
			@deedoo.email = "aj.kim84@gmail.com"
			@deedoo.password = "password"
			@deedoo.save!
			@mood = Mood.new
			@song = Song.new
			@deedoo.submit_mood(@mood, @song)
		end
		it "will associate a post to a user" do
			@deedoo.posts.last.mood.should == @mood
		end
		it "has the right mood" do
            @deedoo.posts.last.song.should == @song
		end
	end

	describe "User will comment on a post" do 
		before do 
			@aj = User.new
			@aj.name = "AJ Kim"
			@aj.email = "anniebunnie@gmail.com"
			@aj.password = "password"
			@aj.save!
			@mood = Mood.create
			@song = Song.create
			@post = @aj.submit_mood(@mood, @song)
			@comment = Comment.create(comment: "I want to run away")
			@comment.user = @aj
			@post.user_comments(@aj, @comment)
		end
		it "will associate a commenter to a post" do
			@post.commenters.first.name.should == "AJ Kim"
		end
		it "has a comment" do
            @post.comments.last.comment.should == "I want to run away"
		end
	end

end
	
