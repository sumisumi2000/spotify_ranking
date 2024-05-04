class UsersController < ApplicationController
  def spotify
    # 認証
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    # よく聞く曲を取得
    @track = spotify_user.top_tracks(time_range: 'long_term').first

    # url に曲の ID を渡す
    redirect_to track_ranking_path(@track.id)
  end
end
