class UsersController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @track = spotify_user.top_tracks(time_range: 'long_term').first

    redirect_to track_path(@track.id)
  end

  def track
    @track = RSpotify::Track.find(params[:id])
  end
end
