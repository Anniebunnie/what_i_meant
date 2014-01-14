class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

    MusixMatch::API::Base.api_key = ENV['MUSIXMATCH_KEY']

 #    def authenticate

	#   root URL = http://api.musixmatch.com/ws/1.1/track.snippet.get?track_id=16860631
	#   api_key = 169a79c608c2cf7a673fec03dcb9af37

	# end
end
