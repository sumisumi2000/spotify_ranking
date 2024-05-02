class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @track = spotify_user.top_tracks(limit: 1).first
  end
end
