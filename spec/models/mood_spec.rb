require 'spec_helper'

describe Mood do
	describe "validate mood in database" do 
		before do 
			@user = User.create(name: "Ann Kim")
			@post = Post.new
			@mood = Mood.new(type: "happy")
			@song = Song.new(title: "Bohemian Rhapsody", artist: "Queen")
			@user.submit_mood(@mood, @song)
		end
		it "will have saved a mood and song to post" do
			@post.mood.should include?("happy")
			
		end
	end
end
