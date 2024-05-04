class UsersController < ApplicationController
  def spotify
    # 認証
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    # よく聞く曲の ID を取得
    @track_ids = spotify_user.top_tracks(time_range: 'long_term', limit: 20).map{ |track| track.id }

    # url に曲の ID を渡す
    redirect_to track_ranking_path(id: @track_ids)
  end
end
