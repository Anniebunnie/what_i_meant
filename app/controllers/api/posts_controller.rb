module MusiXmatch
	module V1.1
	class PostsController < ApplicationController
		#http_basic_authenticate_with name: "ajkim84", :password => "0jooyeon", except: :index
		before_filter :restrict_access

		respond_to :json

		def index
		end

		private

# def restrict_access
# 	api_key = 169a79c608c2cf7a673fec03dcb9af37
# 	head :unauthorized unless api_key
# 	end

	def restrict_access
	authenticate_or_request_with_http_token do |token, options|
		ApiKey.exists?(access_token: token)
  		end
	end

end
end

api_key = 169a79c608c2cf7a673fec03dcb9af37

