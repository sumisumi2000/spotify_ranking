class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @track = spotify_user.top_tracks(time_range: 'medium_term').second
  end
end
