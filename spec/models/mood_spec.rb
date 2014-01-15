require 'spec_helper'

describe Mood do
	describe "validate mood in database" do 
		before do 
			@user = User.create(name: "Ann Kim")
		end
		it "will have stored a new user to database" do
			@user.name.should == "Ann Kim"
		end
	end
end
